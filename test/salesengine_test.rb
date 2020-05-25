require 'minitest/autorun'
require 'minitest/pride'
require './lib/salesengine'
require 'pry'
require 'csv'

class SalesEngineTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({:items => "./data/items.csv", :merchants => "./data/merchants.csv"})
  end

  def test_it_exists
    assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_has_attributes
    assert_equal "./data/items.csv", @sales_engine.items
    assert_equal "./data/merchants.csv", @sales_engine.merchants
  end

  def test_it_can_collect_all_merchants
    assert_equal 12334105, @sales_engine.all_merchants.first.id
    assert_equal 12337411, @sales_engine.all_merchants.last.id
  end
end
