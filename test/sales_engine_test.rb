require './lib/sales_engine'
require './lib/item'
require './lib/merchant'
require './lib/merchant_collection'
require './lib/item_collection'
require 'minitest/autorun'
require 'minitest/pride'

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

  def test_item_collection
    skip
    assert_equal ItemCollection, item_instance
  end

  def test_merchant_collection
    merchant_collection = @sales_engine.merchant_collection
    assert_equal @sales_engine.merchants, merchant_collection.all
  end

  def test_item_collection
      item_collection = @sales_engine.item_collection
      assert_equal @sales_engine.items, item_collection.all
  end


end
