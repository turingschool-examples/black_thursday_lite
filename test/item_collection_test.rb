require './lib/item'
require './lib/item_collection'
require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'

class ItemCollectionTest < Minitest::Test
  def test_it_exists
    item_collection = ItemCollection.new
    assert_instance_of ItemCollection, item_collection
  end

  def test_it_has_no_items_at_first
    item_collection = ItemCollection.new

    assert_equal [], item_collection.all
  end

  def test_it_can_add_items
    item_collection = ItemCollection.new

    plumbus = mock("Plumbus")

    assert_equal [plumbus], item_collection.add_item(plumbus)
  end

  def test_it_can_return_all_items_with_a_merchant_id
    item_collection = ItemCollection.new
    item = Item.new({
              :id          => 1,
              :name        => "Pencil",
              :description => "You can use it to write things",
              :unit_price  => 1099,
              :merchant_id => 2
            })
    item_collection.add_item(item)

    assert_nil item_collection.where(6)
    assert_equal [item], item_collection.where(2)
  end
end
