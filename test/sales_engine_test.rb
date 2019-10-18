require 'minitest'
require 'minitest/autorun'
require_relative '../lib/sales_engine'

class SalesEngineTest < MiniTest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end

  def test_existence
    assert_instance_of SalesEngine, @sales_engine
  end

  def test_merchants
    merchants = @sales_engine.merchants
    assert_instance_of Array, merchants
    assert_equal ['12334230','Hatsbybz','2002-10-24','2011-09-05'], merchants[32]
  end
end
