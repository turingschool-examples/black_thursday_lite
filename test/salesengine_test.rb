require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/salesengine'
require './lib/merchant'

class SalesEngineTest < Minitest::Test
  def test_from_csv_exists
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
    assert_instance_of SalesEngine, sales_engine
  end

  def test_merchant_collection_integration
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    merchant_collection = sales_engine.merchants
    assert_instance_of MerchantCollection, merchant_collection

    merchant = merchant_collection.find(34)
    assert_instance_of Merchant, merchant
  end

  def something
    merchant = Merchant.new({:id => 5, :name => "Turing School"})
  end
end
