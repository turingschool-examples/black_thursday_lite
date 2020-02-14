require './lib/sales_engine'
require 'pry'

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})

merchant_collection = sales_engine.merchant_collection
item_collection = sales_engine.items_collection
merchant = merchant_collection.find(12334876)
p merchant
items = item_collection.where(merchant_id: 12334876)
p items
merchant_collection.update({id: 12334876, name: 'Bob'})
p merchant
merchant_collection.destory(12334876)
merchant = merchant_collection.find(12334876)
p merchant
merchant_collection.create({name: 'Monster Merchant'})
p merchant_collection.all.last
