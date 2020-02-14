require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/item'
require './lib/item_collection'

class ItemCollectionTest < MiniTest::Test
  def setup
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv"
    })

    @item_collection = sales_engine.item_collection
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_it_can_get_single_item
    assert_equal @item, @item_collection.where(2)
  end

  def test_it_can_get_all_items
    assert_instance_of Array, @item_collection.all.class
    assert_instance_of [@item], @item_collection.all
  end
end
