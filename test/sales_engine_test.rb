require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/item'
require './lib/item_collection'
require './lib/merchant'
require './lib/merchant_collection'

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items => "./data/items.csv",
      :merchants => "./data/merchants.csv"})
  end

  def test_existence
    assert_instance_of SalesEngine, @sales_engine
  end

  def test_merchant_collection
    assert_instance_of MerchantCollection, @sales_engine.merchant_collection
  end

  def test_item_collection
    assert_instance_of ItemCollection, @sales_engine.item_collection
  end

end
