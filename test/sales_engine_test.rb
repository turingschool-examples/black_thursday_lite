require "./lib/sales_engine"
require "minitest/autorun"
require "minitest/pride"

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({:items => "./data/items.csv",
                                      :merchants => "./data/merchants.csv"})
  end

  def test_it_is_an_instance
    assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_can_get_an_array_of_the_merchants
    merchant_collection = @sales_engine.merchant_collection
    merchants = merchant_collection.all

    assert_instance_of Array, merchants
    assert_equal true, merchants.all? { |merchant| merchant.class == Merchant }

    merchant_collection = @sales_engine.merchants
    merchants = merchant_collection.all

    assert_instance_of Array, merchants
    assert_equal true, merchants.all? { |merchant| merchant.class == Merchant }
  end

  def test_it_can_get_an_array_of_the_items
    item_collection = @sales_engine.item_collection
    items = item_collection.all

    assert_instance_of Array, items
    assert_equal true, items.all? { |item| item.class == Item }

    item_collection = @sales_engine.items
    items = item_collection.all

    assert_instance_of Array, items
    assert_equal true, items.all? { |item| item.class == Item }
  end

end
