require_relative './lib/sales_engine'
require_relative './lib/merchant'

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})

merchant = Merchant.new({:id => 5, :name => "Turing School"})

items
merchants

merchant_collection = sales_engine.merchant_collection

merchant = merchant_collection.find(34)

merchants = merchant_collection.all