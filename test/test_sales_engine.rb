require 'minitest/autorun'
require 'minitest/pride'
require 'CSV'
require './lib/sales_engine.rb'

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
      })
  end

  def test_instance_exists
    assert_instance_of SalesEngine, @sales_engine
  end

end
