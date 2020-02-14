require 'minitest/autorun'
require 'minitest/pride'
require 'CSV'
require './lib/sales_engine'


class SalesEngineTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end
end
