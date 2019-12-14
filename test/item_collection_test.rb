require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/item_collection'

class ItemCollectionTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
      :items      => "./data/items.csv",
      :merchants  => "./data/merchants.csv"
      })
    @item_collection = ItemCollection.new(@sales_engine.items_filepath)
  end

  def test_it_exists

    assert_instance_of ItemCollection, @item_collection
  end

  def test_it_returns_all_item_instances #support: how to test for all that info

    assert_equal ["item_object1", "item_object2", "item_object3"], @item_collection.all
  end

  def test_it_returns_items_with_merchant_id

    assert_equal [], @item_collection.where(12)
  end


end
