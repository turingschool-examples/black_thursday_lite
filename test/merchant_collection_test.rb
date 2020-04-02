require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'
require './lib/merchant'

class MerchantCollectionTest < Minitest::Test

  def test_merchant_collection_exists
    merchant1 = Merchant.new({:id => 5, :name => "Turing School"})
    merchant_collection = MerchantCollection.new([merchant1])
    assert_instance_of MerchantCollection, merchant_collection
  end

  def test_all
    merchant1 = Merchant.new({:id => 5, :name => "Turing School"})
    merchant2 = Merchant.new({:id => 7, :name => "Galvanize"})
    merchant_collection = MerchantCollection.new([merchant1, merchant2])
    assert_equal [merchant1, merchant2], merchant_collection.all
  end
end
