require_relative 'test_helper.rb'
require './lib/item_collection.rb'
require './lib/item.rb'
require './lib/merchant.rb'

class ItemCollectionTest < Minitest::Test

  def setup
    @item = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })
    @item_collection = ItemCollection.new([@item])
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_it_can_return_all_known_items
    assert_equal [@item], @item_collection.all
  end

  def test_it_can_return_items_with_specified_merchant_id
    assert_equal [@item], @item_collection.where(2)
    assert_equal [], @item_collection.where(5)
  end

end
