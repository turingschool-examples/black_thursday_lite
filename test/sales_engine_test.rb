require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'

class SalesEngineTest < MiniTest::Test
  def setup
  @sales_engine = SalesEngine.from_csv({
    :items => ".data/items.csv",
    :merchants => "./data/merchants.csv"
    })
  end

  def test_sales_engine_exists
    assert_instance_of SalesEngine, @sales_engine
  end
end
