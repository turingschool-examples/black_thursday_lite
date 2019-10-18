require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require 'csv'
require './data/items.csv'
require './data/merchants.csv'

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.new
  end

  def test_it_exists
    assert_instance_of SalesEngine, @sales_engine
  end
end
