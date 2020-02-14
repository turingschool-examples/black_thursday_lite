require 'csv'
require "./lib/item"
require "./lib/merchant"
require "./lib/item_collection"
require "./lib/merchant_collection"

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})
