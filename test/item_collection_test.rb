require 'minitest/autorun'
require 'minitest/pride'
require 'CSV'
require './lib/item'
require './lib/merchant'
require './lib/sales_engine'
require './lib/merchant_collection'
require './lib/item_collection'

class ItemCollectionTest < Minitest::Test

  def test_it_exists
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    item_collection = sales_engine.item_collection

    assert_instance_of ItemCollection, item_collection
  end

  def test_it_knows_where_item_is
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    item_collection = sales_engine.item_collection
    item = item_collection.where(263395617)

    assert_equal 263395617, item[0].id
    assert_equal 12334185, item[0].merchant_id
    assert_equal "Glitter scrabble frames", item[0].name
    assert_equal "1300", item[0].unit_price
  end

  def test_it_can_get_all_merchants
    skip
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
    item_collection = sales_engine.item_collection
    items = item_collection.all

    assert_equal [], items.all
  end
end
