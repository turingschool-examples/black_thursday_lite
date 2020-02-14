require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'

class ItemTest < Minitest::Test

  def setup
    @item = Item.new(1, "Item", "Description", 10000, 2, "created", "updated")
  end

  def test_it_exists

    assert_instance_of Item, @item
  end

  def test_item_has_attributes

    assert_equal 1, @item.id
    assert_equal "Item", @item.name
    assert_equal "Description", @item.description
    assert_equal 10000, @item.unit_price
    assert_equal 2, @item.merchant_id
    assert_equal "created", @item.created_at
    assert_equal "updated", @item.updated_at
  end
end
