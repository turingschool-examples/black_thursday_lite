require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/item_collection'
require './lib/merchant_collection'

class SalesEngineTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})

    require 'pry'; binding.pry
    assert_instance_of SalesEngine, engine
  end
end
