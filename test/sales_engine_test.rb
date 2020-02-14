require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require 'CSV'
require './lib/item'
require './lib/merchant'
require './lib/sales_engine'
require './lib/merchant_collection'
require './lib/item_collection'


class SalesEngineTest < Minitest::Test

  def test_it_exists
    csv_files =
    {
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    }
    sales_engine = SalesEngine.from_csv(csv_files)

    assert_instance_of SalesEngine, sales_engine
  end

  def test_it_has_items
    csv_files =
    {
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    }
    sales_engine = SalesEngine.from_csv(csv_files)

    assert_equal 1367, sales_engine.items.size
    assert_instance_of Item, sales_engine.items.first
  end

  def test_it_has_merchants
    csv_files =
    {
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    }
    sales_engine = SalesEngine.from_csv(csv_files)

    assert_equal 475, sales_engine.merchants.size
    assert_instance_of Merchant, sales_engine.merchants.first
  end
end
