require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/sales_engine'
require './lib/item'
require './lib/item_collection'
require './lib/merchant'
require './lib/merchant_collection'

class ItemCollectionTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv"
    })

    assert_equal [Item], merchant_collection = sales_engine.merchants
    item_collection = sales_engine.item_collection
    merchant = merchant_collection.find(34)
    items = item_collection.where(merchant.id)
  end
end
