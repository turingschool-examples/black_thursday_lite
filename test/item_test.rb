require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'


class ItemTest < Minitest::Test

  def setup
    @item = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })
  end

  def test_it_exists
    assert_instance_of Item, @item
  end

  def test_is_has_a_id
    assert_equal 1, @item.id
  end

  def test_is_has_a_name
    assert_equal "Pencil", @item.name
  end

  def test_is_has_a_description
    assert_equal "You can use it to write things", @item.description
  end

  def test_is_has_a_unit_price
    assert_equal 1099, @item.unit_price
  end

  def test_is_has_a_merchant_id
    assert_equal 2, @item.merchant_id
  end

end
