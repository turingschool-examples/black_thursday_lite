require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/item'
require './lib/sales_engine'
require './lib/item_collection'
require './lib/merchant_collection'
require 'csv'

class ItemCollectionTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
    @item_collection = @sales_engine.item_collection
    @merchant_collection = @sales_engine.merchant_collection
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_all
    assert_instance_of Item, @item_collection.all.first
    assert_instance_of Item, @item_collection.all[23]
    assert_instance_of Item, @item_collection.all[97]
    assert_instance_of Item, @item_collection.all.last
  end

  def test_where
    merchant = @merchant_collection.find("12334859")
    items = @item_collection.where(merchant.id)
    test_items = items.map{|item| item.name}

    assert_equal ["Maxi bolso Woodland"], test_items
  end

end
