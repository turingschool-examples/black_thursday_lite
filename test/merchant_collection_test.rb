require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant.rb'
require './lib/merchant_collection.rb'

class MerchantCollectionTest < MiniTest::Test
  def test_it_exists
    merchant_collection = MerchantCollection.new

    assert_instance_of MerchantCollection, merchant_collection
  end

  def test_it_displays_all_merchants
    merchant_collection = MerchantCollection.new

    assert_equal [], merchant_collection.all
  end

  def test_it_can_find_merchant_by_id
    merchant_collection = MerchantCollection.new
    merchant_1 = Merchant.new({id: 4, name: "REI"})
    merchant_2 = Merchant.new({id: 20, name: "Molly's"})

    assert_equal merchant_2, merchant_collection.find(20)
  end
end
