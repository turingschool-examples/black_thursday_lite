require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'


class ItemTest < Minitest::Test

  def test_it_exists
    item = Item.new({
  :id          => 1,
  :name        => "Pencil",
  :description => "You can use it to write things",
  :unit_price  => 1099,
  :merchant_id => 2
})
  assert_instance_of Item, item
  end

  def test_it_has_attributes
    item = Item.new({
  :id          => 1,
  :name        => "Pencil",
  :description => "You can use it to write things",
  :unit_price  => 1099,
  :merchant_id => 2
    })

    assert_equal 1, item.id
    assert_equal "Pencil", item.name
    assert_equal "You can use it to write things", item.description
    assert_equal 1099, item.unit_price
    assert_equal 2, item.merchant_id
  end

end
