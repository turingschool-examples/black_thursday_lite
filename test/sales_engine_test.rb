require "csv"
require "./lib/sales_engine"
require "minitest/autorun"
require "minitest/pride"

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
                      :items     => "./data/items.csv",
                      :merchants => "./data/merchants.csv",
                      })
    # @items
    # @data
  end

  def test_it_exists
    assert_instance_of SalesEngine, @sales_engine
  end

end
