require 'CSV'

class SalesEngine
  attr_reader :item_collection, :merchant_collection
  
  def initialize(hash)
    @item_collection = ItemCollection.new(hash[:items])
    @merchant_collection = MerchantCollection.new(hash[:merchants])
  end

  def item_collection
    
  end

  def merchant_collection
    # Returns an array of all Merchant class instances
  end

  def self.from_csv(hash)
    self.new(hash)
  end
end
