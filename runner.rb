# sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv",
# })
require "pry"
require "./test/test_helper"

data_files = {
                :items     => "./data/items.csv",
                :merchants => "./data/merchants.csv",
              }

sales_engine = SalesEngine.from_csv(data_files)

merchant_collection = sales_engine.merchants
item_collection = sales_engine.item_collection
binding.pry
merchant = merchant_collection.find(34)
items = item_collection.where(merchant.id)
