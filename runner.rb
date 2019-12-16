
require_relative './lib/salesengine'

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})

merchant_collection = sales_engine.merchant_collection
require 'pry'; binding.pry
merchant = merchant_collection.find(34)
merchants = merchant_collection.all
merchant_collection2 = sales_engine.merchants

item_collection = sales_engine.item_collection
items = item_collection.all
item_collection.where(12334185) 
require 'pry'; binding.pry