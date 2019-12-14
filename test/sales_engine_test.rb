require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'

class SalesEngineTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
      :items      => "./data/items.csv", #this is the path for the data "hey, look here"
      :merchants  => "./data/merchants.csv", #right now, only a string.
      #have to find some way to get comp to execute this as file path to data
    })
  end

  def test_it_exists
      assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_has_attributes
# can't call this until you've done something with the data
    # assert_equal "./data/items.csv", @sales_engine.items # expect that the file path refers, possibly,
    # #to an array of item objects or ...
    # assert_equal "./data/merchants.csv", @sales_engine.merchants
    assert_equal ["item_object1", "item_object2", "item_object3"], @sales_engine.items
    assert_equal ["merchant_object1", "merchant_object2", "merchant_object3"], @sales_engine.merchants
  end
end
