gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant.rb'

class MerchantCollectionTest < Minitest::Test

  def test_merchant_collection_exists
    merchant_collection = MerchantCollection.new(all_merchants)
    assert_instance_of MerchantCollection, merchant_collection
  end


end
