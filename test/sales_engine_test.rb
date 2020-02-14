require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine.rb'
require 'csv'

class SalesEngine < Minitest::Test
  # def setup
  #   @sales_engine = SalesEngine.from_csv({
  #     :items     => "./data/items.csv",
  #     :merchants => "./data/merchants.csv",
  #   })
  # end
  #
  # def test_it_exists
  #   assert_instance_of SalesEngine, @sales_engine
  # end

  def test_it_can_take_info_from_csv
    assert_equal [], sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end
end
