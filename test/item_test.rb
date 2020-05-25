require 'csv'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'

class ItemTest < Minitest::Test
  def setup
    @pencil = Item.new({
        :id          => 1,
        :name        => "Pencil",
        :description => "You can use it to write things",
        :unit_price  => 1099,
        :merchant_id => 2
      })
  end

  def test_it_exists
    assert_instance_of Item, @pencil
  end

  def test_it_has_attributes
    assert_equal 1, @pencil.id
    assert_equal "Pencil", @pencil.name
    assert_equal "You can use it to write things", @pencil.description
    assert_equal 1099, @pencil.unit_price
    assert_equal 2, @pencil.merchant_id
    assert_nil nil, @pencil.created_at
    assert_nil nil, @pencil.updated_at
  end
end
