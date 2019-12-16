require 'minitest/autorun'
require 'minitest/pride'
require './lib/item_collection'
require './lib/item'

class ItemCollectionTest < Minitest::Test
  def setup
    @item_collection = ItemCollection.new("./data/items.csv")
  end

  def test_merchant_collection_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_items_collection_can_find_items_by_id
    assert_instance_of Array, @item_collection.where(12334155)
  end

  def test_items_collection_gets_all_items
    assert_instance_of Array, @item_collection.where(12334105)
    assert_instance_of Array, @item_collection.where(12337411)
  end
end