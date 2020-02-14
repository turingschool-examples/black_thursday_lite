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
    merchants = @sales_engine.merchants
    merchant_collection = @sales_engine.merchant_collection(merchants)
    assert_instance_of Merchant, merchant_collection[0]
    assert_instance_of Merchant, merchant_collection[-1]
    assert_equal 475, merchant_collection.size
  end

  def test_it_can_return_array_of_all_items
    items = @sales_engine.items
    item_collection = @sales_engine.item_collection(items)
    assert_instance_of Item, item_collection[0]
    assert_instance_of Item, item_collection[-1]
    assert_equal 1367, item_collection.size
  end

end
