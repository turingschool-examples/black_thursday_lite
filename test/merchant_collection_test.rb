require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchants'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test
  def setup
    @merchant1 = Merchant.new({id: 5, name: "Chipotle"})
    @merchant2 = Merchant.new({id: 22, name: "Sushi Garden"})
    @merchant3 = Merchant.new({id: 34, name: "Little Cafe In The City"})
    @merchants_list = [@merchant1, @merchant2, @merchant3, @merchant4]
    @merchant_collection = MerchantCollection.new(@merchants_list)
  end

  def test_it_exists

    assert_instance_of Merchant, @merchant1
  end

  def test_it_can_list_all_merchants

    assert_equal @merchants_list, @merchant_collection.all
  end

  def test_it_can_find_merchant_by_id

    assert_equal @merchant1, @merchant_collection.find(5)
    assert_equal @merchant2, @merchant_collection.find(22)
    assert_equal @merchant3, @merchant_collection.find(34)
    assert_nil @merchant_collection.find(50)
  end

end
