require_relative 'test_helper.rb'
require './lib/sales_engine.rb'
require './lib/merchant_collection.rb'
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

  def test_it_creates_merchant_objects
    assert_equal Merchant, @sales_engine.merchants[0].class
  end

  def test_it_creates_item_objects
    assert_equal Item, @sales_engine.items[0].class
  end

  def test_it_can_return_array_of_all_merchants
    skip
    merchants = @sales_engine.merchants
    @sales_engine.merchant_collection(merchants)
  end

  def test_it_can_return_array_of_all_items
    skip
    items = @sales_engine.items
    @sales_engine.item_collection(items)
  end

end
