require 'csv'

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})

merchant_collection = sales_engine.merchant_collection
merchant = merchant_collection.find(34)

merchants = merchant_collection.all
