require './lib/item_collection'
require './lib/merchant_collection'


class SalesEngine
  attr_reader :item_collection, :merchant_collection

  def initialize(hash_info)
    @item_collection = ItemCollection.new(hash_info[:items])
    @merchant_collection = MerchantCollection.new(hash_info[:merchants])
  end


  def self.from_csv(hash_info)
    self.new(hash_info)
  end
end
