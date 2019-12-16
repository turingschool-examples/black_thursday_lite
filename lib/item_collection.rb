require 'CSV'
require './lib/item'
class ItemCollection

  def initialize(item_path)
    @item_path = item_path
  end

  def all
    items = CSV.read(@item_path)
    all_items = []
    item_info = {}
    items.each do |item|
      item_info = item_info.merge(id: item[0])
      item_info = item_info.merge(name: item[1])
      item_info = item_info.merge(description: item[2])
      item_info = item_info.merge(unit_price: item[3])
      item_info = item_info.merge(merchant_id: item[4])
      item_info = item_info.merge(created_at: item[5])
      item_info = item_info.merge(updated_at: item[6])
      all_items << Item.new(item_info)
    end
    all_items
  end

  def where(merchant_id)
    all.find_all do |item|
      item.merchant_id.to_i == merchant_id
    end
  end
end
