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
        items << Item.new({:id => id, :name => name, :description => description, :unit_price => unit_price, :merchant_id => merchant_id})
      end
    @items
  end

  def where(search_merchant_id)
    all.find_all do |item|
      item.merchant_id == search_merchant_id
    end
  end

end

=begin

Update .where() to do this:

  With this new implementation of where,
  you should be able to send a key/value pair into the method
  to return all items where the attribute(key) matches the value given.

  all_pencils = item_collection.where({merchant_id: 34})
  # => [<Item>, <Item>, <Item>]
  all_pencils = item_collection.where({name: 'Pencil'})
  # => [<Item>, <Item>, <Item>]
  all_fifty_cent_items = item_collection.where({price: 50})
  # => [<Item>, <Item>, <Item>]

=end
