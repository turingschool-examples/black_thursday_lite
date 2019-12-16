require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'
class MerchantCollectionTest < MiniTest::Test

  def test_it_exists
    merchant_collection = MerchantCollection.new

    assert_instance_of MerchantCollection, merchant_collection
  end

  def test_it_has_attributes
    merchant_collection = MerchantCollection.new

    assert_equal [], merchant_collection.all
  end

  def test_it_can_find
    merchant_collection = MerchantCollection.new

    assert_nil merchant_collection.find(1)
  end

end
