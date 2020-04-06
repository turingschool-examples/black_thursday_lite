require 'minitest/autorun'
require 'minitest/pride'
require './lib/item_collection'
require './lib/item'

class ItemCollectionTest < Minitest::Test

  def test_item_collection_exists
    item1 = Item.new({
                      :id          => 1,
                      :name        => "Pencil",
                      :description => "You can use it to write things",
                      :unit_price  => 1099,
                      :merchant_id => 2
                      })
    item2 = Item.new({
                      :id          => 2,
                      :name        => "Eraser",
                      :description => "You can use it to erase things",
                      :unit_price  => 2199,
                      :merchant_id => 3
                      })

    item_collection = ItemCollection.new([item1, item2])
    assert_instance_of ItemCollection, item_collection
  end

  def test_where
    item0 = Item.new({
                      :id          => 0,
                      :name        => "Pen",
                      :description => "You can use it to write things permanently",
                      :unit_price  => 4299,
                      :merchant_id => 3
                      })
    item1 = Item.new({
                      :id          => 1,
                      :name        => "Pencil",
                      :description => "You can use it to write things",
                      :unit_price  => 1099,
                      :merchant_id => 2
                      })
    item2 = Item.new({
                      :id          => 2,
                      :name        => "Eraser",
                      :description => "You can use it to erase things",
                      :unit_price  => 2199,
                      :merchant_id => 3
                      })
    item_collection = ItemCollection.new([item0, item1, item2])

    assert_equal [item0, item2], item_collection.where(3)
    assert_equal [], item_collection.where(1)
    assert_equal [item1], item_collection.where(2)
  end
end
