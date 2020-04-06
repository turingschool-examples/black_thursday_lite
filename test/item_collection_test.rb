require 'minitest/autorun'
require 'minitest/pride'
require './lib/item_collection'
require './lib/item'

class ItemCollectionTest < MiniTest::Test

  def test_it_exists
    item_collection = ItemCollection.new
    assert_instance_of ItemCollection, item_collection
  end

  def test_all
    item_collection = ItemCollection.new
    assert_equal item_collection.item_list, item_collection.all
  end

  # def test_where
  #     item_collection = ItemCollection.new
  #     item_collection.all
  #     assert_equal [], item_collection.where(12334185)
  #
  # end

end
