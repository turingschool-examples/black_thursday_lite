require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/item'
require './lib/sales_engine'
require './lib/merchant_collection'
require './lib/item_collection'
require 'csv'


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

  def test_creates_merchants
    assert_instance_of Merchant, @sales_engine.create_merchants.first
  end

  def test_it_creats_a_merchant_collectiom
    assert_instance_of MerchantCollection, @sales_engine.merchant_collection
  end

  def test_it_creats_a_item_collectiom
    assert_instance_of ItemCollection, @sales_engine.item_collection
  end

  def test_creates_items
    assert_instance_of Item, @sales_engine.create_items.first
    assert_instance_of Item, @sales_engine.create_items.last
  end

end
