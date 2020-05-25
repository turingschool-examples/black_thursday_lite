require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'
require './lib/sales_engine'

class MerchantCollectionTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
                                        })
  end

  def test_it_can_return_array_of_all_merchants
    merchant_collection = @sales_engine.merchant_collection
    merchants = merchant_collection.all
    assert_equal Merchant, merchants[0].class
  end

  def test_it_can_return_specific_merchant
    merchant_collection = @sales_engine.merchant_collection
    merchant = merchant_collection.find(12334195)
    assert_equal Merchant, merchant.class
  end

end
