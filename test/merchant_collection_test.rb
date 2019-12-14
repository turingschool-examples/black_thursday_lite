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

  def test_it_returns_all_merchant_instances

    assert_equal [], @merchant_collection.all
  end


end
