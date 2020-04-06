require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'
require './lib/sales_engine'

class MerchantCollectionTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    @merchant_collection = @sales_engine.merchant_collection
  end

  def test_it_exists
    merchant_collection = MerchantCollection.new

    assert_instance_of MerchantCollection, merchant_collection
  end

  def test_it_can_return_all_merchants

    assert_instance_of Array, @merchant_collection.all
    assert_instance_of Merchant, @merchant_collection.all[0]
  end
end
