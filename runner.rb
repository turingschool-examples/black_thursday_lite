require 'CSV'
require './lib/sales_engine'
require './lib/merchant'
require './lib/merchant_collection'
require './lib/item'
require './lib/item_collection'

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv"
})

merchant_collection = sales_engine.merchants
item_collection = sales_engine.items

merchant_collection.create({name: "New Merchant"})
merchant_collection.update(({id: 12337412, name: "Updated Merchant Name"}))
merchant = merchant_collection.find(12334132)
items = item_collection.where(merchant.id)

p merchant_collection.all.last
puts
p items
