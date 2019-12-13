require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'

class SalesEngineTest < MiniTest::Test
  @sales_engine = SalesEngine.from_csv({
    :items => ".data/items.csv",
    :merchants => "./data/merchants.csv"
    })
end
