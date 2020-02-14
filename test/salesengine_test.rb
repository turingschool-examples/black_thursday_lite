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

end
