require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'

class SalesEngineTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({ items: "./data/items.csv", merchants: "./data/merchants.csv"})
    @merchant_collection = @sales_engine.merchant_collection
  end

  def test_sales_engine_can_exist
    sales_engine = SalesEngine.new
    assert_instance_of SalesEngine, sales_engine
    sales_engine_1 = SalesEngine.from_csv({ items: "./data/items.csv", merchants: "./data/merchants.csv"})
    assert_instance_of SalesEngine, sales_engine_1
  end

  def test_sales_engine_from_csv
      assert_equal nil, @merchant_collection.find(34)
      
  end
end
