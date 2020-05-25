require "minitest/autorun"
require "./lib/item_collection"
require "./lib/merchant"

class ItemCollectionTest < Minitest::Test
  def test_items_can_get_data
    all_items = ItemCollection.all
    assert_instance_of Item, all_items[0]
  end

  def test_item_has_same_merchants
    items_2  = ItemCollection.where(12334141)
    assert_equal 1, items_2.size
    assert_equal Array, items_2.class
  end
end
