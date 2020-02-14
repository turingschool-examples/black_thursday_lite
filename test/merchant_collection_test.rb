require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant_collection'
require 'csv'

class MerchantCollectionTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
        :items => "./data/items.csv",
        :merchants => "./data/merchants.csv",
      })
      @merchant_collection = MerchantCollection.new(@sales_engine.merchants)
      @sales_engine.merchant_collection = @merchant_collection

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  # def test_it_creates_merchants
  #   assert_equal [], @merchant_collection.merchants
  #
  #   @merchant_collection.create
  # end

end
