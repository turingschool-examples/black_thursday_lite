require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/sales_engine.rb'
require './lib/merchant'
require './lib/item'
require './lib/merchant_collection'
require './lib/item_collection'
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

  def test_sales_engine_merchant_collection
    merchant_collection = @sales_engine.merchant_collection

    merchant = merchant_collection.find(34)

    merchant1 = mock("Merchant")
    assert_nil merchant
  end

  def test_sales_engine_item_collection
    skip
    item_collection = sales_engine.item_collection
    items = item_collection.where(merchant.id)
    item1 = Mock("Item")
    item2 = Mock("Item")

    assert_equal [item1], items.first
  end
end
