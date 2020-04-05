require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/item_collection'
require './lib/item'
require './lib/merchant_collection'
require './lib/merchant'

class ItemCollectionTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
          :items     => "./data/items.csv",
          :merchants => "./data/merchants.csv",
    })
    @item_collection = @sales_engine.item_collection

    @merchant_collection = @sales_engine.merchant_collection
@item_collection = @sales_engine.item_collection
@merchant = @merchant_collection.find(12334112)
@merchant2 = @merchant_collection.find(86)

# @items = @item_collection.where(@merchant.id)
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_returns_all_items
    assert_equal 1367, @item_collection.all.count
  end

  def test_returns_merchant_id_in_where_method
    assert_equal nil, @item_collection.where(@merchant)
    # assert_equal 4, @item_collection.where(@merchant1)

  end
end
