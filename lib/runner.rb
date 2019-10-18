require'csv'
require'./lib/item'
require'./lib/merchant'

  sales_engine = SalesEngine.from_csv({
    :items     => "./data/items.csv",
    :merchants => "./data/merchants.csv",
  })


merchant_collection = sales_engine.merchants
merchant = merchant_collection.find(34)
##############################################

merchant = Merchant.new({:id => 5, :name => "Turing School"})
p merchant
