require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/item_collection'

class ItemCollectionTest<Minitest::Test
  def setup
    @items = []
    @item = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })
    @items << @item
    @itemcollection = ItemCollection.new(@items)
  end

  def test_it_exists
    assert_instance_of ItemCollection, @itemcollection
  end

  def test_it_has_attributes
    assert_equal @items, @itemcollection.all
  end

  def test_it_can_where
    assert_equal @item, @itemcollection.where(2)
  end


end
