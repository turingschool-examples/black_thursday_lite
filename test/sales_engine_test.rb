require 'minitest/autorun'
require 'minitest/pride'
require 'csv'
require './lib/sales_engine.rb'
require './lib/merchant.rb'
require './lib/merchant_collection.rb'

class SalesEngineTest < MiniTest::Test
  def test_it_exists
    sales_engine = SalesEngine.from_csv({items: "./data/items.csv", merchants: "./data/merchants.csv"})

    assert_instance_of SalesEngine, sales_engine
  end
end
