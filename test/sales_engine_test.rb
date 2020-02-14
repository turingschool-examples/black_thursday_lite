require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine.rb'
require 'csv'

class SalesEngineTest < Minitest::Test

  def test_it_exists
    sales_engine = SalesEngine.new({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv"
})
require "pry"; binding.pry
  assert_instance_of SalesEngine, sales_engine
  end

  def test_it_has_attributes
    skip
    sales_engine = SalesEngine.new({
      :items     => "./data/items.csv",
     :merchants => "./data/merchants.csv"
    })

    assert_equal CSV.read ("./data/items.csv"), sales_engine.items
  end


end
