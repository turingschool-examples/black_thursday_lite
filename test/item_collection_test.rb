require './test/test_helper'
require './lib/item_collection'

class ItemCollectionTest < MiniTest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv"
    })

    @merchant_collection = @sales_engine.merchants
    @item_collection = @sales_engine.item_collection
    @merchant = @merchant_collection.find(34)

  end

  def test_item_where_method
    # @items = @item_collection.where(merchant.id) First Return Assertion
    # => [<Item>, <Item>, ...., <Item>]
    
  end
end
