require_relative './item_collection'
require_relative './merchant_collection'

class SalesEngine
  attr_reader :merchants,
              :items

  def initialize(hash_info)
    @items = ItemCollection.new(hash_info[:items])
    @merchants = MerchantCollection.new(hash_info[:merchants])
  end

  def self.from_csv(sales_info)
    self.new(sales_info)
  end
end
