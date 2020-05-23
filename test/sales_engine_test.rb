require "csv"
require "./lib/sales_engine"
require "minitest/autorun"
require "minitest/pride"

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({:items => "./util/items.csv", :merchants => "./util/merchants.csv"})
  end

  def test_it_exists_as_a_class #???
    assert_equal Class, @sales_engine.class
  end

  def test_it_can_get_an_array_of_the_merchants
    merchant_collection = @sales_engine.merchant_collection
    merchants = merchant_collection.all

    assert_instance_of Array, merchants
    assert_equal 2, merchants.size

    assert merchants.all? { |merchant| merchant.class == Merchant }
  end

  def test_it_can_get_an_array_of_the_items
    item_collection = @sales_engine.item_collection
    items = item_collection.all

    assert_instance_of Array, items
    assert_equal 6, items.size

    assert items.all? { |item| item.class == Item }
  end

end
