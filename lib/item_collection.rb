require 'csv'

class ItemCollection
  attr_reader :csv

  def initialize(csv)
    @csv = csv
  end

  def all
    rows = CSV.read(@csv, headers: true, header_converters: :symbol)

    rows.reduce([]) do |items, row|
      items << Item.new(row)
      items
    end
  end

  def where(detail_params)
    detail_params.flat_map do |key, value|
      if key == :name
        find_by_name(value)
      elsif key == :merchant_id
        find_by_merchant_id(value)
      elsif key == :price
        find_by_price(value)
      end
    end
  end

  def find_by_name(name)
    all.find_all do |item|
      item.name.downcase == name.downcase
    end
  end

  def find_by_merchant_id(merchant_id)
    all.find_all do |item|
      item.merchant_id == merchant_id
    end
  end

  def find_by_price(price)
    all.find_all do |item|
      item.price == price
    end
  end

end
