require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant'
require './lib/merchant_collection'
require './lib/item'
require './lib/item_collection'

class SalesEngineTest < Minitest::Test

  def test_it_exists
    sales_engine = SalesEngine.new
    assert_instance_of SalesEngine, sales_engine
  end

  def test_merchant_collection
    merchant_collection = MerchantCollection.new
    assert_equal [], merchant_collection.merchant_collection
  end

  def test_item_collection
    skip
  end

end
