require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/sales_engine'
require './lib/item'
require './lib/item_collection'
require './lib/merchant'
require './lib/merchant_collection'

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
end
