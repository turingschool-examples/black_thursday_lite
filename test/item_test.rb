require 'minitest/autorun'
require 'minitest/pride'
require './lib/salesengine'
require './lib/merchants'
require './lib/item_collection'

class ItemTest < Minitest::Test

  def test_it_exists
    item = Item.new
    assert_instance_of Item, item
  end

  def test_has_item_properties
    item = Item.new

  end
end
