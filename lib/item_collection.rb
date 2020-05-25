require "csv"
require "./lib/item"

class ItemCollection
  def initialize(sales_engine_input)
    @items_csv = sales_engine_input
  end

  def all
    items = []
    CSV.foreach(@items_csv, headers: true) do |row|
      id = row["id"].to_i
      name = row["name"]
      description = row["description"]
      unit_price = row["unit_price"].to_i
      merchant_id = row["merchant_id"].to_i
      items << Item.new({:id => id, :name => name, :description => description, :unit_price => unit_price, :merchant_id => merchant_id})
    end
    items
  end

  def where(search_merchant_id)
    all.find_all do |item|
      item.merchant_id == search_merchant_id
    end
  end

end
