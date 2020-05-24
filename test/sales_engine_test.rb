require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'

class SalesEngineTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    assert_instance_of SalesEngine, sales_engine
  end

  def test_it_has_items
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    assert_instance_of Array, sales_engine.items
    assert_instance_of Item, sales_engine.items[0]
  end

  def test_it_has_merchants
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    assert_instance_of Array, sales_engine.merchants
    assert_instance_of Merchant, sales_engine.merchants[0]
  end
end
