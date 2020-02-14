require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'
require './lib/sales_engine'

class MerchantCollectionTest < MiniTest::Test

  def setup
    @merchant_collection = MerchantCollection.new
    @sales_engine = SalesEngine.new 
  end

  def test_merchant_collection_exists
    assert_instance_of @merchant_collection, @sales_engine.merchant_collection
  end

  def test_merchants_can_be_found
    assert_equal merchant_object, @merchant_collection.find(34)
  end

  def test_all_merchants_can_be_retrieved
    assert_equal [merchant1, merchant2, etc], @merchant_collection.all
  end
end
