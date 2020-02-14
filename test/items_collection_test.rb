require './lib/item'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/items_collection'

class ItemCollectionTest < Minitest::Test

  def test_item_collection_exist
    item_collection = ItemCollection.new
    assert_instance_of ItemCollection, item_collection
  end

  def test_item_collection_all_and_add
    item_collection = ItemCollection.new
    assert_equal [], item_collection.all
    item1 = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
      })
    item2 = Item.new({
      :id          => 2,
      :name        => "Pen",
      :description => "You can use it to write things",
      :unit_price  => 2011,
      :merchant_id => 2
      })
    item3 = Item.new({
      :id          => 3,
      :name        => "Apple",
      :description => "You can eat it",
      :unit_price  => 10000,
      :merchant_id => 3
      })
    item4 = Item.new({
      :id          => 4,
      :name        => "Cards",
      :description => "You can play with them alone or with friends",
      :unit_price  => 50000000,
      :merchant_id => 4
      })
    item_collection.add(item1)
    item_collection.add(item2)
    item_collection.add(item3)
    item_collection.add(item4)
    assert_equal [item1,item2,item3,item4], item_collection.all
  end

  def test_item_collection_where
    item_collection = ItemCollection.new
    item1 = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
      })
    item2 = Item.new({
      :id          => 2,
      :name        => "Pen",
      :description => "You can use it to write things",
      :unit_price  => 2011,
      :merchant_id => 2
      })
    item3 = Item.new({
      :id          => 3,
      :name        => "Apple",
      :description => "You can eat it",
      :unit_price  => 2011,
      :merchant_id => 3
      })
    item4 = Item.new({
      :id          => 4,
      :name        => "Cards",
      :description => "You can play with them alone or with friends",
      :unit_price  => 50000000,
      :merchant_id => 4
      })
    item_collection.add(item1)
    item_collection.add(item2)
    item_collection.add(item3)
    item_collection.add(item4)

    assert_equal [item2], item_collection.where({id: 2})
    assert_equal [item2, item3], item_collection.where({unit_price: 2011})
    assert_equal [item1, item2], item_collection.where({merchant_id: 2})
  end
end
