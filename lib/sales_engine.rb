class SalesEngine
  attr_reader :item, :merchant

  def initialize(info)
    @item = info[:item]
    @merchant = info[:merchant]
  end
end
# merchant_collection = sales_engine.merchant_collection
# merchant = merchant_collection.find(34)
