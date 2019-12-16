require_relative './item'
require 'CSV'

class ItemCollection
  def initialize(item_info)
    @items = create_items(item_info)
  end

  def create_items(item_info)
    items_array = []

    CSV.foreach(item_info, headers: true) do |row|
      items_array.push(Item.new({id: row[0], name: row[1]}))
    end
    return items_array
  end

  def all
    @items
  end

  def where(merchant_id)
    @items.find_all do |items|
      items.merchant_id == merchant_id
    end
  end
end
