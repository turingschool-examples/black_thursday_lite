require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/sales_engine'

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end

  def test_it_exists
    assert_equal SalesEngine, @sales_engine
  end
end
