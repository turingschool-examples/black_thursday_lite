require 'minitest/autorun'
require 'minitest/pride'
require 'csv'
require './lib/item_collection'

class ItemCollectionTest < Minitest::Test
  item_collection = sales_engine.item_collection
  items = item_collection.where(merchant.id)
end
