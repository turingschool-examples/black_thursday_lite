require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/item_collection'
require 'csv'

class ItemCollectionTest < Minitest::Test

  def setup
    @item_collection = ItemCollection.new("./data/items.csv")
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_it_has_items
    assert_equal 1367, @item_collection.items.size
  end

  def test_it_can_return_all_items
    assert_equal 1367, @item_collection.all.size
  end

  def test_it_can_return_items_by_merchant
    expected = @item_collection.items.select do |item|
      item.merchant_id == "12334185"
    end

    assert_equal expected, @item_collection.where(12334185)
  end

end
