
require 'minitest/autorun'
require 'minitest/pride'
require './lib/item_collection'
require './lib/item'

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

  def test_it_can_get_all_items
    item1 = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })
    item2 = Item.new({
      :id          => 3,
      :name        => "Spiral Notebook",
      :description => "You can use it to write things on",
      :unit_price  => 1299,
      :merchant_id => 2
    })
    item3 = Item.new({
      :id          => 5,
      :name        => "Toothbrush",
      :description => "Clean your mouth",
      :unit_price  => 999,
      :merchant_id => 3
    })
    item_collection = ItemCollection.new([item1, item2, item3])

    assert_equal [item1, item2,item3], item_collection.all
  end

  def test_it_can_find_all_items
    item1 = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })
    item2 = Item.new({
      :id          => 3,
      :name        => "Spiral Notebook",
      :description => "You can use it to write things on",
      :unit_price  => 1299,
      :merchant_id => 2
    })
    item3 = Item.new({
      :id          => 5,
      :name        => "Toothbrush",
      :description => "Clean your mouth",
      :unit_price  => 999,
      :merchant_id => 3
    })
    item_collection = ItemCollection.new([item1, item2, item3])

    assert_equal [item1, item2], item_collection.where(2)
    assert_equal [item3], item_collection.where(3)
  end

end
