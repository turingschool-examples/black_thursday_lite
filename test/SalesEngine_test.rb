require 'minitest/autorun'
require 'minitest/pride'
require 'csv'
require './lib/SalesEngine'

class SalesEngineTest < Minitest::Test

  def test_it_exists
    sales_engine = SalesEngine.new
    # sales_engine = SalesEngine.from_csv({
    #   :items     => "./data/items.csv",
    #   :merchants => "./data/merchants.csv",
    # })
    assert_instance_of SalesEngine, sales_engine
  end

end
