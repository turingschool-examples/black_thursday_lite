require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/sales_engine'
require 'CSV'

class SalesEngineTest < Minitest::Test

  def test_it_exists
    sales_engine = SalesEngine.new({:items => "./data/items.csv" , :merchants => "./data/merchants.csv"})

    assert_instance_of SalesEngine, sales_engine
  end

  def test_it_has_attributes
    sales_engine = SalesEngine.new({:items => [], :merchants => []})

    assert_equal [], sales_engine.items
    assert_equal [], sales_engine.merchants
  end

end
