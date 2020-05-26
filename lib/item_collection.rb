require "csv"
require "./lib/item"

class ItemCollection

  def initialize(sales_engine_input)
    @items_csv = sales_engine_input
    @items = []
  end

  def all
    if @items.empty?
      CSV.foreach(@items_csv, headers: true) do |row|
        id = row["id"].to_i
        name = row["name"]
        description = row["description"]
        unit_price = row["unit_price"].to_i
        merchant_id = row["merchant_id"].to_i
        @items << Item.new({:id => id, :name => name, :description => description, :unit_price => unit_price, :merchant_id => merchant_id})
      end
    end
    @items
  end

  def where(hash_to_find)
    if hash_to_find.keys.include?(:merchant_id)
      all.find_all do |item|
        item.merchant_id == hash_to_find[:merchant_id]
      end
    elsif hash_to_find.keys.include?(:name)
      all.find_all do |item|
        item.name == hash_to_find[:name]
      end
    elsif hash_to_find.keys.include?(:price)
      all.find_all do |item|
        item.unit_price == hash_to_find[:price]
      end
    end
  end

end
