require 'csv'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/item_collection'

class ItemCollectionTest < Minitest::Test
 def setup
   @sales_engine = SalesEngine.from_csv({
     :items     => "./data/items.csv",
     :merchants => "./data/merchants.csv"
   })

   @merchant_collection = sales_engine.merchants
   @item_collection = sales_engine.item_collection
   @merchant = merchant_collection.find(34)
   @items = item_collection.where(merchant.id)
 end
end
