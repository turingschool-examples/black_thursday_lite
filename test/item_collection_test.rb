require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine.rb'
require './lib/item'
require './lib/item_collection'

class ItemCollectionTest < MiniTest::Test
  def setup
    @item = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })
    @item_collection = ItemCollection.new
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_it_can_get_single_item
    assert_equal @item, @item_collection.where(2)
  end

  def test_it_can_get_all_items
    assert_instance_of Array, @item_collection.all.class
    assert_instance_of [@item], @item_collection.all
  end
end
