require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'

class SalesEngineTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
      :items      => "./data/items.csv",
      :merchants  => "./data/merchants.csv"
      })
  end

  def test_it_exists

    assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_has_information
    require "pry"; binding.pry

    assert @sales_engine.items
    assert @sales_engine.merchants
  end
end
