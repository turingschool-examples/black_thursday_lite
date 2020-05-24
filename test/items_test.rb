require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/items'

class ItemTest < Minitest::Test
  def setup
    @item1 = Item.new({
      :id => 263397,
      :name => "Fragrance Candles",
      :description => "A little definitely goes a long way with Bloomin Scents - relax at home and anywhere you want with tranquility fragrance oils",
      :unit_price => 399,
      :merchant_id => 12345
      })
  end

  def test_it_exists

    assert_instance_of Item, @item1
  end

  def test_it_can_give_item_info_attributes

    assert_equal 263397, @item1.id
    assert_equal "Fragrance Candles", @item1.name
    assert_equal "A little definitely goes a long way with Bloomin Scents - relax at home and anywhere you want with tranquility fragrance oils", @item1.description
    assert_equal 399, @item1.unit_price
    assert_equal 12345, @item1.merchant_id
  end
end
