require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'

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

  def test_it_can_store_merchants
    assert_instance_of Array, @sales_engine.merchants
    assert_instance_of Merchant, @sales_engine.merchants.first

    assert_equal 12334105, @sales_engine.merchants.first.id
    assert_equal "Shopin1901", @sales_engine.merchants.first.name
    assert_equal 12337411, @sales_engine.merchants.last.id
    assert_equal "CJsDecor", @sales_engine.merchants.last.name
  end

  def test_it_can_store_items
    assert_instance_of Array, @sales_engine.items
    assert_instance_of Item, @sales_engine.items.first

    assert_equal 263395237, @sales_engine.items.first.id
    assert_equal "510+ RealPush Icon Set", @sales_engine.items.first.name
  end

  def test_merchant_collection_returns_a_merchant_collection_object
    merchant_collection = @sales_engine.merchant_collection
    assert_instance_of MerchantCollection, merchant_collection
  end
end
