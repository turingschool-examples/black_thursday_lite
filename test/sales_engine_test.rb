require "minitest/autorun"
require "minitest/pride"
require "./lib/item"
require "./lib/item_collection"
require "./lib/merchant"
require "./lib/merchant_collection"
require "./lib/sales_engine"
require "pry"

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv"})
  end

  def test_it_exists
    assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_can_collect_merchants
    assert_equal MerchantCollection, @sales_engine.merchant_collection.class
  end

  def test_it_can_collect_items
    assert_equal ItemCollection, @sales_engine.item_collection.class
  end
end
