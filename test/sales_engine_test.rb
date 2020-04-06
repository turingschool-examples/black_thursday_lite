require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
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


 def test_it_has_attributes
   assert_equal "./data/items.csv", @sales_engine.items
   assert_equal "./data/merchants.csv", @sales_engine.merchants
 end

end
