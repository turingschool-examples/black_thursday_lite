require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/sales_engine'
require './lib/item'
require './lib/item_collection'
require './lib/merchant'
require './lib/merchant_collection'

class ItemCollectionTest < Minitest::Test
  def test_it_exists
    item_collection = ItemCollection.new

    assert_instance_of ItemCollection, item_collection
  end
end
