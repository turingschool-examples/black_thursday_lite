require 'minitest/autorun'
require 'minitest/pride'
require './lib/item_collection'
require './lib/item'

class ItemCollectionTest < MiniTest::Test
  def setup
    @item_collection = ItemCollection.new("./data/items.csv")
  end

  def test_item_collection_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_item_array_initializes_item_objects
    assert_instance_of Array, @item_collection.all
    assert_instance_of Item, @item_collection.all[0]
    assert_instance_of Item, @item_collection.all.last
  end

  def test_find_returns_item_array_based_on_merchant_id
    assert_instance_of Array, @item_collection.where({merchant_id: 12334155})
    assert_equal 12334155, @item_collection.where({merchant_id: 12334155})[0].merchant_id
  end

  def test_where_returns_empty_array_if_no_items
    assert_equal [], @item_collection.where({merchant_id: 100000000})
  end

  def test_can_find_items_based_on_different_info
    assert_instance_of Array, @item_collection.where({merchant_id: 12334155})
    assert_instance_of Item, @item_collection.where({merchant_id: 12334155})[0]
    assert_instance_of Item, @item_collection.where({name: "Pencil"})[0]
  end

end
