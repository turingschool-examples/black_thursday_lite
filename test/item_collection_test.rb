require "minitest/autorun"
require './lib/sales_engine'
require './lib/item_collection'
require "./lib/item"

class MerchantCollectionTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
          :items     => "./data/items.csv",
          :merchants => "./data/merchants.csv",
    })
    @item_collection = @sales_engine.item_collection
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_all_gets_Item_instances
    @item_collection.all.each do |item|
      assert_instance_of Item, item
    end
  end
end
