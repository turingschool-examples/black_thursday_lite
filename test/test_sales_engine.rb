require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'

class SalesEngine < Minitest::Test

#Getting a SuperClass error here

  def test_it_exists
    sales_engine = SalesEngine.new({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv"
    })
  assert_instance_of SalesEngine, sales_engine
  end
end
