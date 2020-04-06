require './lib/item'

class ItemCollection

  def self.all(item_collection)
    item_collection.map { |item| Item.new(item)}
  end

  def self.where(merchant_id)
    self.all.find_all{ |item| item.merchant_id == merchant_id}
  end
  
end
