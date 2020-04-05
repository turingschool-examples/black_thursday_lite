require 'minitest/autorun'
require 'minitest/pride'
require './lib/salesengine'
require './lib/merchants'
require './lib/item_collection'

class ItemCollectionTest < Minitest::Test

  def test_it_exists
    items = ItemCollection.new
    assert_instance_of ItemCollection, items
  end
end
