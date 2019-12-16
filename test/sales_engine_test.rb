require './test/test_helper'
require './lib/items'
require './lib/merchants'
require './lib/sales_engine'

class SalesEngineTest < MiniTest::Test

  def setup
    @sales_engine = SalesEngine.new({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end

  def test_sales_engine_exists_with_empty_attribute
    assert_instance_of SalesEngine, @sales_engine
    assert_equal Hash, @sales_engine.data_set.class
    # binding.pry

    assert @sales_engine.data_set.key?(:items)
    assert_equal "./data/items.csv", @sales_engine.items

    assert @sales_engine.data_set.key?(:merchants)
    assert_equal "./data/merchants.csv", @sales_engine.merchants

  end


end
