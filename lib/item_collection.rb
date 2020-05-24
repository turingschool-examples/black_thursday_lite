require 'csv'
require './lib/item'

class ItemCollection
  attr_reader :item_file

  def initialize(item_file)
    @item_file = item_file
  end

  def all
    all_items = []
    CSV.read(item_file, headers: true).each do |item|
      item_hash = {id: item["id"], name: item["name"], description: item["description"], unit_price: item["unit_price"], merchant_id: item["merchant_id"] }
      all_items << Item.new(item_hash)
    end
    all_items
  end

  def where(merchant_id_input)
    all.find_all do |item|
      item.merchant_id == merchant_id_input
    end
  end
end
