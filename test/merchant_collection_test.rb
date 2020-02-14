require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/merchant_collection.rb'

class MerchantCollectionTest < Minitest::Test
  def setup
    @merchant_collection = MerchantCollection.new
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_returns_all_known_merchants
    assert_equal [], @merchant_collection.all
  end

  def test_it_can_find_specific_merchant_id
  end
end
