require 'minitest/autorun'
require 'minitest/pride'
require './lib/item_collection'

class ItemCollectionTest < Minitest::Test

  def setup
    @item_collection = ItemCollection.new("./data/items.csv")
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_it_has_access_to_all_items
    assert_equal 1368, @item_collection.all.length
  end

  def test_all_returns_instances_of_items
    assert_instance_of Item, @item_collection.all[23]
  end

  def test_where_returns_an_item_instance
    assert_instance_of Item, @item_collection.where(12334144)[0]
  end

  def test_where_returns_the_correct_item_instance
    assert_equal "800", @item_collection.where(12334176)[0].unit_price
  end

  def test_where_returns_an_array_of_the_correct_length
    assert_equal 2, @item_collection.where(12334393).length
  end
end
