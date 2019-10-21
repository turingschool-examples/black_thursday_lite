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
    assert_instance_of MerchantCollection, @sales_engine.merchants
  end

  def test_merchants
    merchants = @sales_engine.merchants
    assert_instance_of Array, merchants.all
    assert_equal ['12334230','Hatsbybz','2002-10-24','2011-09-05'], merchants.all[32]
  end
end
