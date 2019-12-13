require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/sales_engine'
require './lib/item'
require './lib/item_collection'
require './lib/merchant'
require './lib/merchant_collection'

class SalesEngineTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.new

    assert_instance_of SalesEngine, sales_engine
  end
end
