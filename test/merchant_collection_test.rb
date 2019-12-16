require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test

  def test_it_exists
    merchant_collection = MerchantCollection.new(all_merchants)
    assert_instance_of MerchantCollection, merchant_collection
  end
end
