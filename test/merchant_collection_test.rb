require './lib/merchant'
require './lib/merchant_collection'
require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'

class MerchantCollectionTest < Minitest::Test

  def test_it_exists
    merchant_collection = MerchantCollection.new

    assert_instance_of MerchantCollection, merchant_collection
  end

  def test_it_starts_with_no_merchants
    merchant_collection = MerchantCollection.new

    assert_equal [], merchant_collection.all
  end

  def test_it_can_add_merchants
    merchant_collection = MerchantCollection.new
    merchant = Merchant.new({:id => 5, :name => "Turing School"})

    merchant_collection.add_merchant(merchant)
    assert_equal [merchant], merchant_collection.all
  end

  def test_it_can_find_merchants_with_id
    merchant_collection = MerchantCollection.new
    merchant = Merchant.new({:id => 5, :name => "Turing School"})

    assert_nil  merchant_collection.find(5)

    merchant_collection.add_merchant(merchant)
    assert_equal merchant, merchant_collection.find(5)
  end
end
