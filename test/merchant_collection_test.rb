require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant'
require './lib/merchant_collection'

class MerchantCollectionTest < MiniTest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_can_get_merchant
    assert_instance_of Merchant, @merchant_collection.find().class
  end

  def test_it_can_get_all_merchants
    assert_instance_of Array, @merchant_collection.all
    # assert_instance_of ??, @merchant_collection.all.length
  end
end
