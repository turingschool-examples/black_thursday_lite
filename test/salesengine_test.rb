require './lib/salesengine.rb'
require "minitest/autorun"
require 'minitest/pride'
require 'csv'


class SalesEnginetest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end

  def test_class_exists
    assert_instance_of SalesEngine, @sales_engine
  end
end
