require 'minitest/autorun'
require 'minitest/pride'
require './lib/salesengine'

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items    => "./data/items.csv",
      :merchants => "./data/merchants.csv",
      })
  end

  def test_it_can_exist
  end

end
