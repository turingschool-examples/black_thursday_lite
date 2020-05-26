require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'
require './lib/item_collection'
require './lib/sales_engine'
require 'CSV'
require 'pry'

class SalesEngineTest < MiniTest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({:items => "./data/items.csv",
                                        :merchants => "./data/merchants.csv"
                                         })
  end

  # def test_it_exists
  #   assert_instance_of SalesEngine.new, @sales_engine
  # end


end
