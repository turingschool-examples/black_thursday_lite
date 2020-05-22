require 'minitest/autorun'
require 'minitest/pride'
require './lib/salesengine'
require 'pry'
require 'csv'

class SalesEngineTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.new
    assert_instance_of SalesEngine, sales_engine
  end

  def test_it_has_data_from_csv
    sales_engine = SalesEngine.new

    assert_equal ({:items => "./data/items.csv", :merchants => "./data/merchants.csv"}), sales_engine = SalesEngine.from_csv
  end

end
