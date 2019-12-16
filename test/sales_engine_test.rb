require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'


class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end

  def test_it_exists
    assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_has_attributes
    require "pry"; binding.pry
    assert_equal "./data/items.csv", @sales_engine.item_path
    assert_equal "./data/merchants.csv", @sales_engine.merchant_path
  end

  def test_it_can_return_all_merchants
    assert_equal  476, @sales_engine.merchant_collection.all.length
  end

  def test_it_creates_a_merchantcollection_object
    assert_instance_of MerchantCollection, @sales_engine.merchant_collection
  end

  def test_it_has_access_to_merchant_objects
    assert_instance_of Merchant, @sales_engine.merchant_collection.all[2]
  end

  def test_it_can_return_all_items
    skip
    assert_equal 1368, @sales_engine.items.length
  end

  def test_it_can_create_an_instance_of_MerchantCollection
    skip
    assert_instance_of MerchantCollection, @sales_engine.merchant_collection

  end

end
