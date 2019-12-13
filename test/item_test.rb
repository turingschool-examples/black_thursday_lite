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
    item = Item.new

    assert_instance_of Item, item
  end
end
