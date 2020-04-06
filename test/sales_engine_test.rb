require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant_collection'
require "./lib/merchant"

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

  def test_it_gets_merchant_list
    expected = {:id => 12334105, :name => "Shopin1901"}
    assert_equal expected, @sales_engine.merchant_list.first
    expected = {:id => 12337411, :name => "CJsDecor"}
    assert_equal expected, @sales_engine.merchant_list.last
  end

  def test_it_gets_merchant_collection
    assert_instance_of MerchantCollection, @sales_engine.merchant_collection
  end
end
