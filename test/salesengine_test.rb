require 'minitest/autorun'
require 'minitest/pride'
require './lib/salesengine'
require 'pry'
require 'csv'

class SalesEngineTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.from_csv({:items => "./data/items.csv", :merchants => "./data/merchants.csv"})
    binding.pry
    assert_instance_of SalesEngine, sales_engine
  end
end
