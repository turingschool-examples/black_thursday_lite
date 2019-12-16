require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
# require './data/items'
# require './data/merchants'


class SalesEngineTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.from_csv({:items =>"./data/items.csv",
       :merchants => "./data/merchants.csv"})
    assert_instance_of SalesEngine, sales_engine
  end

  def test_it_has_attributes
    sales_engine = SalesEngine.from_csv({:items =>"./data/items.csv",
       :merchants => "./data/merchants.csv"})
    assert_equal "./data/items.csv", sales_engine.itempath
    assert_equal "./data/merchants.csv", sales_engine.merchantpath
  end
end
