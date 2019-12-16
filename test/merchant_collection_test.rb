require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/sales_engine'
require './lib/item'
require './lib/item_collection'
require './lib/merchant'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test
  def test_it_exists
    merchant_collection = MerchantCollection.new

    assert_instance_of MerchantCollection, merchant_collection
  end

  def test_it_can_find_merchants_by_id
    merchant_collection = MerchantCollection.new
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    assert_equal Merchant, merchant_collection = sales_engine.merchant_collection
    merchant = merchant_collection.find(34)
  end
end
