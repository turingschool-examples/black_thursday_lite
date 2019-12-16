require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/item_collection'
require './lib/sales_engine'

class ItemCollectionTest < Minitest::Test

  def test_it_exists
    item_collection = sales_engine.item_collection
    merchant = merchant_collection.find(34)
    items = item_collection.where(merchant.id)
  end
end
