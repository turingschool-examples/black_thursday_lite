require 'minitest/autorun'
require 'minitest/pride'
require './lib/item_collection'
require './lib/item'
require 'pry'

class ItemCollectionTest < Minitest::Test

  def test_it_exists
    item = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })
    item_collection = ItemCollection.new([item])

    assert_instance_of ItemCollection, item_collection
  end

  def test_it_returns_all_items
    item1 = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })
    item2 = Item.new({
      :id          => 2,
      :name        => "Toothbrush",
      :description => "Please brush your teeth",
      :unit_price  => 299,
      :merchant_id => 3
    })
    item_collection = ItemCollection.new([item1, item2])
    assert_equal [item1, item2], item_collection.all
  end

  def test_can_return_appropriate_item
    item1 = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })
    item2 = Item.new({
      :id          => 2,
      :name        => "Toothbrush",
      :description => "Please brush your teeth",
      :unit_price  => 299,
      :merchant_id => 3
    })
    item3 = Item.new({
      :id          => 3,
      :name        => "Pen",
      :description => "You write things",
      :unit_price  => 499,
      :merchant_id => 2
    })
      item_collection = ItemCollection.new([item1, item2, item3])
      assert_equal [item1, item3], item_collection.where(2)
      assert_equal [item2], item_collection.where(3)
    end

end
