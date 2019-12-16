require "minitest/autorun"
require "minitest/pride"
require "./lib/sales_engine"
require "csv"

class SalesEngineTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.new
    assert_instance_of SalesEngine, sales_engine
  end

  def test_it_can_take_csv_files
    #sales_engine = SalesEngine.new
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv"})
      #require "pry"; binding.pry

    assert_instance_of SalesEngine, sales_engine
    #assert_equal "./data/items.csv", sales_engine.items
    #assert_equal "./data/merchants.csv", sales_engine.merchants
  end
end
