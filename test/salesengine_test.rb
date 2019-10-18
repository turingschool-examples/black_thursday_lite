require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require 'sales_engine'

class SalesEngineTest < Minitest::Test

  def test_it_exists
    hash = CSV.foreach
    this_sales_engine = SalesEngine.new(hash)
    test_instance_of SalesEngine, this_sales_engine,
  end
end
