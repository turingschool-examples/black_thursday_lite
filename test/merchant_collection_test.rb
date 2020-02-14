require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test

  def test_it_exists
    merchant_collection = Merchant_Collection.new
    assert_instance_of Merchant_Collection, merchant_collection
  end

  def test_it_can_add_merchants
    merchant_collection = Merchant_Collection.new

    assert_instance_of Array, new_merchants
    assert_equal 475, new_merchants.length
  end


end
