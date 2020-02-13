require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test
  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})
    @merchant2 = Merchant.new({:id => 6, :name => "Starbucks"})
    @merchant3 = Merchant.new({:id => 1, :name => "Pizza Hut"})
    @merchant4 = Merchant.new({:id => 9, :name => "KFC"})
    @merchants_list = [@merchant, @merchant2, @merchant3, @merchant4]
    @merchant_collection = MerchantCollection.new(@merchants_list)
  end

  def test_it_exists
    assert_instance_of Merchant, @merchant
  end

  def test_it_can_find_all_merchants
    assert_equal @merchants_list, @merchant_collection.all
  end

  def test_it_can_find_merchants_by_id
    assert_equal @merchant, @merchant_collection.find(5)
    assert_equal @merchant2, @merchant_collection.find(6)
    assert_equal @merchant3, @merchant_collection.find(1)
    assert_equal @merchant4, @merchant_collection.find(9)
    assert_nil @merchant_collection.find(11)
  end
end
