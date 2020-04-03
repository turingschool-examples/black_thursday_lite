require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/sales_engine'
require './lib/merchant_collection'
require 'csv'

class MerchantCollectionTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
    @merchant_collection = @sales_engine.merchant_collection
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_find
    assert_equal "GoldenRayPress", @merchant_collection.find("12334135").name
  end

  def test_all
    assert_instance_of Merchant, @merchant_collection.all.first
    assert_instance_of Merchant, @merchant_collection.all[23]
    assert_instance_of Merchant, @merchant_collection.all[97]
    assert_instance_of Merchant, @merchant_collection.all.last
  end

end
