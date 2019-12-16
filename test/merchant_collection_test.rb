require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'
require './lib/merchant'

class MerchantCollectionTest < Minitest::Test
  def setup
    @merchant1 = Merchant.new({id: 1, name: "Shawn"})
    @merchant2 = Merchant.new({id: 2, name: "Michael"})
    @merchant3 = Merchant.new({id: 3, name: "Sarah"})
    @merchants = [@merchant1, @merchant2, @merchant3]
    @merchant_collection = MerchantCollection.new(@merchants)
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_returns_all_merchants
    assert_equal @merchants, @merchant_collection.all
  end

  def test_it_can_find_a_merchant_by_id
    assert_equal @merchant2, @merchant_collection.find(2)
    assert_nil @merchant_collection.find(500)
  end
end
