require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'
require 'pry'

class MerchantCollectionTest < Minitest::Test
  def test_it_exists
    merchant_collection = MerchantCollection.new("./data/merchants.csv")

    assert_instance_of MerchantCollection, merchant_collection
  end

  def test_it_has_attributes
    merchant_collection = MerchantCollection.new("./data/merchants.csv")

    assert_instance_of Array, merchant_collection.merchants_file
  end
end
