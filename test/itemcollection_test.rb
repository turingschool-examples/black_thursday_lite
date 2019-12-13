require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/itemcollection'
require './lib/merchantcollection'

class ItemcollectionTest < Minitest::Test
  def test_it_exists
    itemcollection = Itemcollection.new

    assert_instance_of Itemcollection, itemcollection
  end

end
