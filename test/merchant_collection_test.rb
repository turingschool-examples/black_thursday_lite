require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test
  def test_it_exists
    merchants = []
    merchant = Merchant.new({:id => 5, :name => "Turing School"})
    merchants << merchant
    merchant_collection = MerchantCollection.new(merchants)

    assert_instance_of MerchantCollection, merchant_collection
  end

  def test_it_can_all
    
    merchants = []
    merchant = Merchant.new({:id => 5, :name => "Turing School"})
    merchants << merchant
    merchant_collection = MerchantCollection.new(merchants)

    assert_equal [merchant], merchant_collection.all
  end

  def test_it_can_find
    merchants = []
    merchant = Merchant.new({:id => 5, :name => "Turing School"})
    merchants << merchant
    merchant_collection = MerchantCollection.new(merchants)

    assert_equal merchant, merchant_collection.find(5)
  end

end
