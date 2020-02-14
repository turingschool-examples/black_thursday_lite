require 'minitest/autorun'
require 'minitest/pride'
require './lib/item_collection'

class ItemCollectionTest < Minitest::Test

  def test_it_exists
    @item_collection = ItemCollection.new

    assert_instance_of ItemCollection, @item_collection
  end
end
