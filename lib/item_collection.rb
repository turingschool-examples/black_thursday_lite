require_relative './sales_engine'
require_relative './item'

class ItemCollection
  def initialize(item_data)
    @items = create_items(item_data)
  end

  def create_items(item_data)
    items_array = []

    CSV.foreach(item_data, headers: true, header_converters: :symbol) do |row|
      items_array << Item.new( {id: row[0], name: row[1]} )
    end
    items_array
  end

  def all
    @items
  end

  def where(merchant_id)
    @items.find_all { |merchant| merchant.id == merchant_id }
  end
end
