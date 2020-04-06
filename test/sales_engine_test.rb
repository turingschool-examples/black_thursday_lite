require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'

class SalesEngineTest < Minitest::Test

  def test_sales_engine_exists
    sales_engine = SalesEngine.from_csv({:items     => "./data/items.csv", :merchants => "./data/merchants.csv",})
    assert_instance_of SalesEngine, sales_engine
  end

  def test_merchant_collection
    sales_engine = SalesEngine.from_csv({:items     => "./data/items.csv", :merchants => "./data/merchants.csv",})
    merchant_collection = sales_engine.merchant_collection
    merchant = merchant_collection.find(12334105)
    assert_equal "Shopin1901", merchant.name
    assert_equal sales_engine.merchants, merchant_collection.all
  end
end
