require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test
  def setup
    @merchant = MerchantCollection.new({:id => 5, :name => "Turing School"})
  end

  def test_merchant_collection_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_merchant_collection_can_find_all_merchants
    assert_equal @merchant, @merchant.find(5)
  end
end