require_relative 'test_helper.rb'
require './lib/sales_engine.rb'
require 'csv'

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
  })
  end

  def test_it_exists
  
    assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_creates_merchant_objects

    assert_equal Merchant, @sales_engine.merchants[0].class
  end

end
