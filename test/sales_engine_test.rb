require 'minitest/autorun'
require 'minitest/pride'
require 'csv'
require './lib/sales_engine'

class SalesEngineTest < Minitest::Test

  def test_it_exists
    sales_engine = SalesEngine.new({"./data/items.csv", "./data/merchants.csv")
  end
  end
