require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant_collection'
require 'csv'

class MerchantCollectionTest < Minitest::Test

  def setup
    @merchant_collection = MerchantCollection.new("./data/merchants.csv")
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_has_merchants
    assert_equal 475, @merchant_collection.merchants.size
  end

  def test_it_returns_all_merchants
    assert_equal 475, @merchant_collection.all.size
  end

  def test_it_finds_specific_merchant
    expected = @merchant_collection.merchants[34]
    assert_equal expected, @merchant_collection.find(34)
  end

end
