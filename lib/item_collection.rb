require "CSV"
require './lib/item'

class ItemCollection
  attr_reader :items

  def initialize(item_file)
    @items = make_items(item_file)
  end

  def make_items(item_file)
    #iterate through data making merchants
    items = []
    CSV.foreach(item_file, :headers => true) do |row|
      items.push(Item.new({id: row[0], name: row[1], description: row[2], unit_price: row[3], merchant_id: row[4]}))
    end
    items
  end

  def all
    @items
  end

  def where(search_info)
    @items.find_all do |item|
      if search_info.values[0].class == String
        (item.send(search_info.keys[0]).downcase).include?(search_info.values[0].downcase)
      else
        item.send(search_info.keys[0]) == search_info.values[0]
      end
    end
  end

end
