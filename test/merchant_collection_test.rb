require "minitest/autorun"
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'

class TestMerchantCollection < Minitest::Test


  def test_it_exists
    merchant_collection = MerchantCollection.new
    assert_instance_of MerchantCollection, merchant_collection
  end

  #Probably wrong way to test this
  def test_find_all_merchants
    merchant_collection = MerchantCollection.new
    assert_equal merchant_collection.collection, merchant_collection.all
  end

  def test_find_merchant
    merchant_collection = MerchantCollection.new
    merchant_collection.all
    found_merchant = merchant_collection.find(12334112)

    assert_equal "Candisart", found_merchant.name
  end
end
