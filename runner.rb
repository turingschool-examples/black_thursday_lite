require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'
require './lib/sales_engine'
require './lib/item_collection'
require 'CSV'
require 'pry'

sales_engine = SalesEngine.new
sales_engine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
  })
sales_engine.read

merchant_collection = MerchantCollection.new(sales_engine)
merchant_collection.all


# item_collection = ItemCollection.new(sales_engine)
# item_collection.all
