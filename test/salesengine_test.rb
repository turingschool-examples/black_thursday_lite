require 'minitest/autorun'
require 'minitest/pride'
require './lib/salesengine'

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items    => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end

  def test_it_can_exist
    assert_equal SalesEngine, @sales_engine
  end

  def test_it_can_collect_merchants
    assert_equal [], @sales_engine.collect_merchants
  end

  def test_it_can_collect_items
    assert_equal [], @sales_engine.collect_items
  end

end
