require 'csv'
require_relative './lib/sales_engine'
require_relative './lib/merchant_collection'
require_relative './lib/item_collection'


sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})

require "pry"; binding.pry
merchant_collection = sales_engine.merchants
merchant = merchant_collection.find(34)

p merchant
