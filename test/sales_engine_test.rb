#NOT RUNNING - UNDEFINED .FROM_CSV METHOD
require 'minitest/autorun'
require 'minitest/pride'
require 'csv'
require './lib/sales_engine'

class SalesEngineTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
          :items     => "./data/items.csv",
          :merchants => "./data/merchants.csv",
        })
        # should this be SalesEngine.new ?
  end

  def test_it_exists
    assert_instance_of SalesEngine, @sales_engine
  end
end
