require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant'
require './lib/item'
require 'CSV'

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

  def test_it_has_name
    assert_equal "Pencil", @item.name
  end
end
