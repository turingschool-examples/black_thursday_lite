require 'csv'

class Item
  attr_reader :list, :id, :name, :discription, :unit_price,
              :merchant_id, :number_of_items
  @@items = []

  def initialize(id, name, description, unit_price, merchant_id)
      @id = id
      @name =  name
      @discription = discription
      @unit_price = unit_price
      @merchant_id = merchant_id
  end

  def self.create_multiple_items(file_path)
    CSV.foreach(file_path, headers: true, header_converters: :symbol) do |row|
      @@items << Item.new(row[:id], row[:name], row[:discription],
                         row[:unit_price], row[:merchant_id])
    end
    @@items
  end

  def self.all
    @@items
  end

  def self.where(key_value_pair)
    key = key_value_pair.keys.first
    value = key_value_pair.values.first
    @@items.find_all do |item|
      if key == :merchant_id
        item.merchant_id == value.to_s
      elsif key == :name
        item.name == value
      elsif key == :discription
        item.discription == value
      else key == :unit_price
        item.unit_price == value.to_s
      end
    end
  end


end
