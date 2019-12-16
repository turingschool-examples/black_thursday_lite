require './test/test_helper'
require './lib/item'

class ItemTest < MiniTest::Test

  def setup
    @item_1 = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })
  end

  def test_item_exists_with_attributes
    assert_instance_of Item, @item_1

    assert_equal 1, @item_1.id
    assert_equal "Pencil", @item_1.name
    assert_equal "You can use it to write things", @item_1.description
    assert_equal 1099, @item_1.unit_price
    assert_equal 2, @item_1.merchant_id
  end

end
