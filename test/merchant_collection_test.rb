require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'
require './lib/sales_engine'

class MerchantCollectionTest < Minitest:: Test

  def test_it_exists
    merchant_collection = MerchantCollection.new

    assert_instance_of MerchantCollection, merchant_collection
  end

  def test_it_returns_array_of_all_merchants
    merchant_collection = MerchantCollection.new
    sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
  })

    assert_equal "./data/merchants.csv", sales_engine
  end

  def test_it_can_pull_all
    merchant_collection = MerchantCollection.new
    sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
  })

  assert_instance_of Array, merchant_collection.merchant_collection
  end
end
