require './lib/sales_engine'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv"
  })
  end


  def test_it_is_an_instance_of_SalesEngine
    # binding.pry
    assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_has_file_path_attributes
# binding.pry
    # assert_equal "./data/items.csv", @sales_engine.item_path
    # assert_equal "./data/merchants.csv", @sales_engine.merchant_path


  end






end
