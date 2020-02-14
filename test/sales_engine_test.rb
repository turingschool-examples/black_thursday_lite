require 'minitest/autorun'
require 'minitest/pride'
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

  def test_it_has_attributes
    csv_files =
    {
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    }
    sales_engine = SalesEngine.from_csv(csv_files)

    assert_equal "./data/items.csv", sales_engine.item_csv
    assert_equal "./data/merchants.csv", sales_engine.merchant_csv
  end
end
