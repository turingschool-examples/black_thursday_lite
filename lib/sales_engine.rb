require_relative './item_collection'
require_relative './merchant_collection'

class SalesEngine
  def initialize(hash_info)
    @item_collection = ItemCollection.new(hash_info[:items])
    @merchant_collection = MerchantCollection.new(hash_info[:merchants])
  end

  def self.from_csv(sales_info)
    self.new(sales_info)
  end
end