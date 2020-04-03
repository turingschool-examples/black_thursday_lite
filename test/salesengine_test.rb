require 'minitest/autorun'
require 'minitest/pride'
require './lib/salesengine'
require './lib/merchants'
require './lib/items'

class SalesEngineTest < Minitest::Test

  def test_it_exists
    salesengine = SalesEngine.new
    assert_instance_of SalesEngine, salesengine
  end
end
