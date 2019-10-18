require 'CSV'
require './lib/sales_engine'
require './lib/merchant_collection'
require './lib/item_collection'
require './lib/merchant'
require './lib/item'

sales_engine = SalesEngine.from_csv({
  :items_path     => "./data/items.csv",
  :merchants_path => "./data/merchants.csv"
})

merchant_collection = sales_engine.merchants
item_collection = sales_engine.items
merchant = merchant_collection.find(12335567)
items = item_collection.where(merchant.id)

puts "Found item:"
puts items.name
