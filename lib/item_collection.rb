require 'CSV'
class ItemCollection
  attr_reader :item_list
  def initialize
    @item_list = []
  end

  def add_item(item)
    @item_list << item
  end

  def all
    CSV.foreach('./data/items.csv', headers: true, header_converters: :symbol) do |row|

       info = Hash.new
      info.merge!(id: row[:id])
      info.merge!(name: row[:name])
      info.merge!(description: row[:description])
      info.merge!(unit_price: row[:unit_price])
      info.merge!(merchant_id: row[:merchant_id])
      item = Item.new(info)

      add_item(item)
    end
    @item_list
  end

  def where(merchant_id)

    items = item_list.select do |item|
      item.merchant_id == merchant_id
    end
    items
  end

end
