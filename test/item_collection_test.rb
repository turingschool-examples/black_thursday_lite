require "minitest/autorun"
require "minitest/pride"
require "./lib/item"
require "./lib/merchant"
require "./lib/item_collection"
require "./lib/merchant_collection"

class ItemCollectionTest < Minitest::Test

  def setup
    @item1 = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })
    @item2 = Item.new({
      :id          => 2,
      :name        => "Hat",
      :description => "You can use it to cover bad hair",
      :unit_price  => 2099,
      :merchant_id => 2
    })
    @item_collection = ItemCollection.new([@item1, @item2])
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_it_can_show_all_items
    assert_equal [@item1, @item2], @item_collection.all
  end
end
