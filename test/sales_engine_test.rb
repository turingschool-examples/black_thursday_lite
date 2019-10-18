gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine.rb'


class SalesEngineTest < Minitest::Test

  def test_salesengine_exists
    sales_engine = SalesEngine.new
    assert_instance_of SalesEngine, sales_engine
  end

  def test_salesengine_initializes_with_items_and_merchants
    skip
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
})
    assert_instance_of SalesEngine, sales_engine
  end
end
