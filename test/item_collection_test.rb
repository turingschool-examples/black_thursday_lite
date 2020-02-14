require 'minitest/autorun'
require 'minitest/pride'
require 'CSV'
require './lib/sales_engine'

class ItemCollectionTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv"
    })
    @merchant_collection = @sales_engine.merchants
    @item_collection = s@ales_engine.item_collection
    @merchant = @merchant_collection.find(34)
  end

  def test_it_exists

  end

  def test_it_can_find_where_an_object_is
    items = item_collection.where(merchant.id)

    assert_equal [], items
  end


end
