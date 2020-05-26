require 'CSV'
require './lib/merchant'
require './lib/merchant_collection'
require './lib/sales_engine'
require 'pry'

sales_engine = SalesEngine.from_csv({:items     => "./data/items.csv",
                                     :merchants => "./data/merchants.csv"})
merchant_collection = sales_engine.merchant_collection
