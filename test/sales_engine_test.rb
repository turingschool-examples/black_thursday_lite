require 'minitest/autorun'
require 'minitest/pride'

class SalesEngineTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.new
    assert_instance_of SalesEngine, sales_engine
  end
end
