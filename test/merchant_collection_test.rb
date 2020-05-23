require "./lib/merchant_collection"
require "minitest/autorun"
require "minitest/pride"

class MerchantCollectionTest < Minitest::Test

  def setup
    @merchant_collection = MerchantCollection.new("./util/merchants.csv")
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_can_get_an_array_of_the_merchants
    merchants = @merchant_collection.all

    assert_instance_of Array, merchants
    assert_equal 2, merchants.size # The util file has 2 merchants

    assert_equal true, merchants.all? { |merchant| merchant.class == Merchant }
  end

  def test_it_can_find_merchant_by_id
    assert_instance_of Merchant, @merchant_collection.find(12334105)
    assert_instance_of Merchant, @merchant_collection.find(12334112)
    assert_nil @merchant_collection.find(42)
  end

end
