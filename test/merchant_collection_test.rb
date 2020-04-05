require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant_collection'
require './lib/merchant'

class MerchantCollectionTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
          :items     => "./data/items.csv",
          :merchants => "./data/merchants.csv",
    })
    @merchant_collection = @sales_engine.merchant_collection
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_all_gets_all_Merchant_instances
    assert_equal 475, @merchant_collection.all.count
  end

  def test_it_can_find_merchants_by_id
    assert_equal 'Candisart', @merchant_collection.find(12334112).name
  end
end
