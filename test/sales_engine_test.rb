require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'csv'
require_relative '../lib/sales_engine'
# require_relative '../data/items.csv'
# require_relative '../data/merchants.csv'

class SalesEngineTest < Minitest::Test

  def test_it_exists

    sales_engine = SalesEngine.new
  #   sales_engine = SalesEngine.from_csv({
  #   :items     => "./data/items.csv",
  #   :merchants => "./data/merchants.csv",
  # })

    assert_instance_of SalesEngine, sales_engine
  end

#   def test_it_can_get_data
#       sales_engine = SalesEngine.from_csv({
#       :items     => "./data/items.csv",
#       :merchants => "./data/merchants.csv",
#     })
# require "pry"; binding.pry
#     assert_equal [:items, :merchants], info.keys
#     assert_equal ["./data/items.csv", "./data/merchants.csv"], info.values
#   end


end
