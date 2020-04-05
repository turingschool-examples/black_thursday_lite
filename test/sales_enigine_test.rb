require 'CSV'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require 'pry'

class SalesEngineTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.new

    assert_instance_of SalesEngine, sales_engine
  end

  def test_it_can_access_data
    sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})

    assert_equal sales_engine[:items], "./data/items.csv"
    assert_equal sales_engine[:merchants] , "./data/merchants.csv"
  end

  def test_it_can_access_

  end

end
