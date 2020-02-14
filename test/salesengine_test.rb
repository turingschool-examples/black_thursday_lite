require './lib/salesengine'
require 'minitest/autorun'
require 'minitest/pride'
require 'csv'

class SalesEngineTest < Minitest::Test

  def test_it_exists
  salesengine = SalesEngine.new

  assert_instance_of SalesEngine, salesengine
  end

  def test_thing
    SalesEngine.from_csv({
    :items     => "./data/items.csv",
    :merchants => "./data/merchants.csv",
  })
  end
end
