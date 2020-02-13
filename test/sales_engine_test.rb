require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/item_collection'
require './lib/merchant_collection'
require './lib/merchant'
require './lib/item'
require 'csv'

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.new({
        :items => "./data/items.csv",
        :merchants => "./data/merchants.csv",
      })
      @item_collection = ItemCollection.new(@sales_engine.items)
      @item_collection.create
      @sales_engine.item_collection = @item_collection

      @merchant_collection = MerchantCollection.new(@sales_engine.merchants)
      @merchant_collection.create
      @sales_engine.merchant_collection = @merchant_collection
  end

  def test_it_exists
    assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_has_attributes
    assert_equal "./data/items.csv", @sales_engine.items
    assert_equal "./data/merchants.csv", @sales_engine.merchants
  end

  def test_it_creates_item_collection
    assert_instance_of ItemCollection, @item_collection
  end

  def test_it_creates_merchant_collection
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_can_find_a_specific_merchant
    expected = @sales_engine.merchant_collection.items[34]

    assert_equal expected, @merchant_collection.find(34)
  end

  def test_it_return_all_merchants
    expected = @sales_engine.merchant_collection.items

    assert_equal expected, @merchant_collection.all
  end

  def test_it_can_return_all_items
    expected = @sales_engine.item_collection.items

    assert_equal expected, @item_collection.all
  end



end
