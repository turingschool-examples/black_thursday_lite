require 'minitest/autorun'
require 'minitest/pride'
require 'CSV'
require './lib/sales_engine'

class SalesEngineTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.new
  end

  def test_it_exists
    assert_instance_of SalesEngine, @sales_engine
  end
end
