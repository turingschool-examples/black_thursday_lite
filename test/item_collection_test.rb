require "minitest/autorun"
require "minitest/pride"
require "./lib/item_collection"
require "./lib/sales_engine"
require "pry"

class ItemCollectionTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv"})
  end

  def test_it_exists
    item_collection = @sales_engine.item_collection
  end

  def test_all
    assert_equal Array, @sales_engine.item_collection.all.class
  end

  def test_where
    assert_equal [], @sales_engine.item_collection.where(101)
  end

end
