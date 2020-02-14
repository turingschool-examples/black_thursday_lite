require './lib/sales_engine'
require './lib/merchant_collection'
require './lib/item_collection'
require './lib/merchant'
require './lib/item'
require 'csv'

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
  })

merchant_collection = sales_engine.merchant_collection
require "pry"; binding.pry
