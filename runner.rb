require './lib/sales_engine'

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})

merchant_collection = sales_engine.merchants
item_collection = sales_engine.items
