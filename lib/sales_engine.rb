require 'CSV'
require './lib/sales_engine'
require './lib/merchant_collection'
require './lib/item_collection'
require './data/merchant'
require './data/item'

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})

merchant_collection = sales_engine.merchants
item_collection = sales_engine.items
all_pencils = item_collection.where({merchant_id: 34})
all_pencils = item_collection.where({name: 'Pencil'})
all_fifty_cent_items = item_collection.where({price: 50})
