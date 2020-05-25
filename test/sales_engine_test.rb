require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/sales_engine'

class SalesEngineTest < Minitest::Test

  def test_it_exists
    sales_engine = SalesEngine.new({
      :items => "./data/items.csv",
      :merchants => "./data/merchants.csv"
      })

    assert_instance_of SalesEngine, sales_engine
  end

  def test_it_has_attribute
    sales_engine = SalesEngine.new({
      :items => "./data/items.csv",
      :merchants => "./data/merchants.csv"
      })

    assert_equal "./data/items.csv", sales_engine.items
    assert_equal "./data/merchants.csv", sales_engine.merchants
  end

  def test_it_can_find_merchant_collection
    sales_engine = SalesEngine.new({
      :items => "./data/items.csv",
      :merchants => "./data/merchants.csv"
      })

  end

end
