require 'minitest/autorun'
require 'minitest/pride'
require './lib/sale_engine'
require 'csv'
require 'pry'


class SalesEngineTest < Minitest::Test


  def test_it_exists
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    assert_instance_of SalesEngine, sales_engine
  end

  # sales_engine = SalesEngine.from_csv({
  #   :items     => "./data/items.csv",
  #   :merchants => "./data/merchants.csv",
  # })

end
