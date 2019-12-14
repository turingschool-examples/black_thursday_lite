require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
      :items      => "./data/items.csv",
      :merchants  => "./data/merchants.csv"
      })

      @merchant_collection = MerchantCollection.new(@sales_engine.merchants_filepath)
  end

  def test_it_exists

    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_returns_all_merchant_instances #ask how to test for this (unskip and run)
    skip
    assert_equal [], @merchant_collection.all
  end

  def test_it_finds_merchants_with_id

    assert_equal nil, @merchant_collection.find(12)
    assert @merchant_collection.find(12334160)
  end

end
