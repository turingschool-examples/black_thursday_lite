
require "minitest/autorun"
require "./lib/merchant_collection"

class MerchantCollectionTest < Minitest::Test
  def test_merchant_can_get_data
    data = MerchantCollection.all
    assert_instance_of Merchant, data.first
    assert_equal 475, data.size
  end

  def test_it_can_find_by_id
    non_merchant = MerchantCollection.find(123344)
    merchant = MerchantCollection.find(12334160)

    assert_equal [], non_merchant
    assert_equal  1 , merchant.size
  end
end
