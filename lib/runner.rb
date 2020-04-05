require 'pry'
require './lib/merchant'
require './lib/merchant_collection'
require './lib/item'
require './lib/item_collection'
require './lib/sales_engine'
# sales_engine = SalesEngine.new
# merchant_collection = sales_engine.merchant_collection
 # sales_engine = SalesEngine.new

# sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv",
# })
sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/small_merchants.csv",
})
merchant_collection = sales_engine.merchant_collection
item_collection = sales_engine.item_collection
pry
