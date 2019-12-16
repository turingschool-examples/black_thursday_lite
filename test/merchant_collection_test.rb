require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'
require './lib/merchant'

class MerchantCollectionTest < Minitest::Test
  def setup
    @merchant_collection = MerchantCollection.new("./data/merchants.csv")
  end

  def test_merchant_collection_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_merchant_collection_can_find_merchants_by_id
    assert_instance_of Merchant, @merchant_collection.find(12334155)
  end

  def test_merchant_collection_gets_all_merchants
    assert_instance_of Merchant, @merchant_collection.find(12334105)
    assert_instance_of Merchant, @merchant_collection.find(12337411)
  end
end