require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require 'csv'


class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end

  def test_it_exists
      assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_loads_merchants_array_attribute
    header_row = ["id", "name", "created_at", "updated_at"]
    first_merchant_row = ["12334105", "Shopin1901", "2010-12-10", "2011-12-04"]
    last_merchant_row = ["12337411", "CJsDecor", "2011-12-09", "2016-01-08"]
    assert_equal header_row, @sales_engine.merchants_array.first
    assert_equal first_merchant_row, @sales_engine.merchants_array[1]
    assert_equal last_merchant_row, @sales_engine.merchants_array.last
  end

  def test_it_creats_a_merchant_collectiom
    assert_instance_of MerchantCollection, @sales_engine.merchant_collection
  end

  def test_it_loads_items_array_from_csv
    skip
    assert_equal # expect items array first, last, and header
  end

  # test we have a merchant collection attribute
  # @sales_engine.merchant_collection = MerchantCollection.new(CSV array turned into merchant objects)
  # @sales_engine.merchant_collection.first == instance of Merchant
  # repeat the process for items
end
