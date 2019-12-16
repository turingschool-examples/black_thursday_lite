require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sales_engine'

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
  
  def test_it_creates_MerchantCollection
    assert_instance_of MerchantCollection, @sales_engine.merchant_collection
  end
end