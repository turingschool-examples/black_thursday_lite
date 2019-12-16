require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'
require './lib/sales_engine'
require 'csv'

class SalesEngineTest < Minitest::Test

  def test_it_exists
    merchant = MerchantCollection.new({:id => 5, :name => "Turing School"})

    assert_instance_of MerchantCollection, merchant
  end

  def test_it_has_data
    merchant = MerchantCollection.new({:id => 5, :name => "Turing School"})

    assert_equal 5, merchant.id
    assert_equal "Turing School", merchant.name
  end

  def test_can_return_all_merchant_instances
    sales_engine = SalesEngine.from_csv({
      :items     => './data/items.csv',
      :merchants => './data/merchants.csv'
    })
    merchant_collection = sales_engine.merchant_collection

    assert_instance_of Array, merchant_collection.all
  end
end
