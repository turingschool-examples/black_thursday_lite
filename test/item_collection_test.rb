require "./lib/item_collection"
require "minitest/autorun"
require "minitest/pride"

class ItemCollectionTest < Minitest::Test

  def setup
    @item_collection = ItemCollection.new("./util/items.csv")
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_it_gets_all_of_the_items
    items = @item_collection.all
    assert_instance_of Array, items
    assert items.all? { |item| item.class == Item }
  end

  def test_it_can_look_up_items_by_merchant_id
    assert_equal [], @item_collection.where(42)

    merchant_3_items = @item_collection.where(12334195)
    assert_instance_of Array, merchant_3_items
    assert_equal true, merchant_3_items.all? { |item| item.class == Item }
    assert_equal 1, merchant_3_items.length

    merchant_2_items = @item_collection.where(12334185)
    assert_instance_of Array, merchant_2_items
    assert_equal 3, merchant_2_items.length
    assert_equal true, merchant_2_items.all? { |item| item.class == Item }

    merchant_1_items = @item_collection.where(12334141)
    assert_instance_of Array, merchant_1_items
    assert_equal 1, merchant_1_items.length
    assert_equal true, merchant_1_items.all? { |item| item.class == Item }
  end

  def test_it_can_find_items_by_name
    skip
  end

  def test_it_can_find_items_by_price
    skip
  end

end
