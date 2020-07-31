require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/merchant'
require './lib/item_collection'
require './lib/merchant_collection'
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

  def test_it_has_item_file
    assert_equal "./data/items.csv", @sales_engine.item_file
  end

  def test_it_has_merchant_file
    assert_equal "./data/merchants.csv", @sales_engine.merchant_file
  end

  def test_it_has_an_item_collection
    assert_equal 1367, @sales_engine.item_collection.count
    assert_equal true, @sales_engine.item_collection.all? { |item| item.class == Item}
  end

  def test_it_has_a_merchant_collection
    assert_equal 475, @sales_engine.merchant_collection.count
    assert_equal true, @sales_engine.merchant_collection.all? { |merchant| merchant.class == Merchant}
  end

end
