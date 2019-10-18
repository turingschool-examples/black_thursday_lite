require 'csv'
require './lib/sales_engine'
require '.lib/merchant'
require '.lib/item'

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})
