require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require 'CSV'
require 'pry'

class SalesEngineTest < Minitest::Test
  # # def test_it_exists
  #   sales_engine = SalesEngine.new({
  #  :items     => "./data/items.csv",
  #  :merchants => "./data/merchants.csv",
  #   })
  #   assert_instance_of SalesEngine, sales_engine
  # end
  #
  def test_it_exists
    sales_engine = SalesEngine.from_csv({
   :items     => "./data/items.csv",
   :merchants => "./data/merchants.csv",
    })
    assert_instance_of SalesEngine, sales_engine
  end

  def test_it_has_readable_attributes
    sales_engine = SalesEngine.from_csv({
   :items     => "./data/items.csv",
   :merchants => "./data/merchants.csv",
    })
    assert_equal "./data/items.csv", sales_engine.items
    assert_equal "./data/merchants.csv", sales_engine.merchants
  end

#   def test_it_read_csvs
#     skip
#     assert_equal sales_engine, SalesEngine.from_csv({
#       :items     => "./data/items.csv",
#       :merchants => "./data/merchants.csv",
#       })
#   end
#
#   def test_it_can_read_item_collections
#     skip
#     assert_equal something, sales_engine.item_collection
#   end
#
#   def test_it_can_read_merchant_collections
#     skip
#     assert_equal something, sales_engine.merchant_collection
#   end
# end
