require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/item_collection'

class ItemCollectionTest < Minitest::Test

  def setup
    @item_collection = ItemCollection.new("./data/items_test.csv")
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_it_has_array_of_items_objects
    assert_equal  3, @item_collection.all.count
    assert_equal true, @item_collection.all.all? { |item| item.class == Item}
  end

  def test_it_can_find_by_merchant_id
    found_items = @item_collection.find_by_merchant_id(12334141)
    assert_equal Array, found_items.class
    assert_equal true, found_items.all? { |item| item.merchant_id == 12334141 }
  end

  def test_it_can_find_with_hash_query
    found1 = @item_collection.where({
      merchant_id: 12334141
      })
    assert_equal 1, found1.count
    assert_equal true, found1.all? { |item| item.merchant_id == 12334141 }

    found2 = @item_collection.where({
      name: "Painting"
      })
    assert_equal true, found2.all? { |item| item.name == "Painting" }

    found3 = @item_collection.where({
      price: 1200
      })
    assert_equal true, found3.all? { |item| item.price == 1200 }
  end

end
