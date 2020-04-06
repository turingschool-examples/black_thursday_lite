require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'
require 'pry'

class MerchantCollectionTest < MiniTest::Test
  def test_it_exists
    collection = MerchantCollection.new

    assert_instance_of MerchantCollection, collection
  end

  def test_it_can_return_all_merchants
    collection = MerchantCollection.new

    assert_equal [], MerchantCollection.all
  end

  def test_it_can_return_a_specific_merchant


  end
end
