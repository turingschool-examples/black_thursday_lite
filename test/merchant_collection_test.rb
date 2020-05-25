require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test
  def setup
    @merchant_1 = Merchant.new({:id => 12334105, :name => "Shopin1901"})
    @merchant_2 = Merchant.new({:id => 12334112, :name => "Candisart"})
    @merchants = [@merchant_1, @merchant_2]
    @merchant_collection = MerchantCollection.new(@merchants)
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_can_list_all_merchants
    assert_equal [@merchant_1, @merchant_2], @merchant_collection.all
  end

  def test_it_can_find_a_merchant_by_id
    assert_equal @merchant_1, @merchant_collection.find(12334105)
  end
end
