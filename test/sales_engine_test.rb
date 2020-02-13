require_relative 'test_helper.rb'
require './lib/sales_engine.rb'
require 'csv'

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.new({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
  })
  end

  def test_it_exists
    assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_has_attributes
    assert_equal "./data/items.csv", @sales_engine.items
    assert_equal "./data/merchants.csv", @sales_engine.merchants
  end

end
