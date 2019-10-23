require 'csv'
require './lib/merchantcollection'

class SalesEngine

  def initialize(hash)

  end

  def self.from_csv(hash)
    sales_engine = SalesEngine.new(hash)
  end

  def items
    # item_coll = ItemCollection.new
  end

  def merchants
    MerchantCollection.new
    # merchant_coll = MerchantCollection.new
  end

end
