require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test
  def setup
    @merchant_collection = MerchantCollection.new({:id => 5, :name => "Turing School"})
  end

  def test_merchant_collection_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_merchant_collection_can_get_attributes
    assert_equal 5, @merchant_collection.id
    assert_equal "Turing School", @merchant_collection.name
  end

  def test_merchant_collection_can_find_all_merchants
    assert_equal nil, @merchant_collection.find(10)
    assert_equal @merchant_collection, @merchant_collection.find(5)
  end
end