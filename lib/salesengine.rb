require 'csv'

class SalesEngine(sales_engine)

  def initialize(hash)

  end

  def self.from_csv(hash = {})
    hash[:items] => "./data/items.csv",
    hash[:merchants] => ".data/merchants.csv"
  end

  def items
    item_coll = ItemCollection.new
  end

  def merchants
    merchant_coll = MerchantCollection.new
  end

end
