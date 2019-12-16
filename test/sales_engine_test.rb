require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'

class SalesEngineTest < Minitest::Test

  def test_it_exists
    sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
  })

  assert_instance_of SalesEngine, sales_engine
  end

  # def test_it_can_pull_merchants_file
  #
  # end
end
