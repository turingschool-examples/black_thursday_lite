require "minitest/autorun"
require "minitest/pride"
require "./lib/item_collection"
require "./lib/item"

class ItemCollection < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv"
    @item_collection = @sales_engine.item_collection
    @item_collection.where(merchant.id)
  end

  def test_it_exist
    assert_instance_of ItemCollection, @item_collection
  end

  def test_it_has_item_parameters

  end

  def test_it_can_collect_all
    assert_equal [], @item_collection.all
  end

  def test_where
    
  end
end
