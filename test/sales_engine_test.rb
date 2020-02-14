require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/merchant'
require './lib/item'
require './lib/sales_engine'

class SalesEngineTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
      :items => "./data/items.csv",
      :merchants => "./data/merchants.csv"
      })
  end

  def test_it_exists
    assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_has_attributes
    assert_instance_of Array, @sales_engine.item_collection
    assert_instance_of Item, @sales_engine.item_collection[0]
    assert_instance_of Array, @sales_engine.merchant_collection
    assert_instance_of Merchant, @sales_engine.merchant_collection[0]
  end
end
