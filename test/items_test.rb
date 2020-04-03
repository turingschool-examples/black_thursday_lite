require 'minitest/autorun'
require 'minitest/pride'
require './lib/salesengine'
require './lib/merchants'
require './lib/items'

class ItemsTest < Minitest::Test

  def test_it_exists
    items = Items.new
    assert_instance_of Items, items
  end
end
