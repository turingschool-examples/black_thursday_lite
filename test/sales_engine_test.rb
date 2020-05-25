require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/sales_engine'

class SalesEngineTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
                                        })
  end

  def test_it_can_import_merchants
    assert_instance_of MerchantCollection, @sales_engine.merchant_collection
  end
end
