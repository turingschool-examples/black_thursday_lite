require "minitest/autorun"
require "minitest/pride"
require "./lib/item_collection"
require "./lib/sales_engine"
require "pry"

class ItemCollectionTest < Minitest::Test

  def test_it_exists
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv"})
    item_collection = sales_engine.item_collection
  end

  def test_all
  end

  def test_where
  end
  
end
