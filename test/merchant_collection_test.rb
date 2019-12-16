require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sales_engine'
require_relative '../lib/merchant_collection'

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
  
  def test_you_can_find_merchant_by_id
    merchant = @merchant_collection.find(12334112)
    
    assert_equal "12334112", merchant.id
  end
end