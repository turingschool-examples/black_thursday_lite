require "minitest/autorun"
require "minitest/pride"
require "./lib/sales_engine"

class SalesEngineTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.new

    assert_instance_of SalesEngine, sales_engine
  end

  def test_it_can_instantiate_with_class_method_and_attributes
    sales_engine = SalesEngine.from_csv({
                                        :items     => "./data/items.csv",
                                        :merchants => "./data/merchants.csv",
                                        })

    assert_instance_of SalesEngine, sales_engine
    assert_equal "./data/items.csv", sales_engine.items_csv
    assert_equal "./data/merchants.csv", sales_engine.merchants_csv
  end

  def test_it_can_instantiate_merchant_collection
    sales_engine = SalesEngine.from_csv({
                                        :items     => "./data/items.csv",
                                        :merchants => "./data/merchants.csv",
                                        })
    merchant_collection = sales_engine.merchant_collection

    assert_instance_of MerchantCollection, merchant_collection
  end
end
