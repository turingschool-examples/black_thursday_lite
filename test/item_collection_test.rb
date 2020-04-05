require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/merchant'
require './lib/merchant_collection'
require './lib/item'
require './lib/item_collection'
require './lib/sales_engine'

class ItemCollectionTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
    @merchant_collection = @sales_engine.merchant_collection
    @item_collection = @sales_engine.item_collection
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_returns_items_given_key_value_pair
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/small_items.csv",
      :merchants => "./data/merchants.csv",
    })
    merchant_collection = sales_engine.merchant_collection
    item_collection = sales_engine.item_collection
    x = item_collection.where({name: "iphone"})
    assert_equal "iphone", item_collection.where({name: "iphone"})[0].name
    assert_equal 2, item_collection.where({name: "iphone"}).length
    assert_equal "water bottle", item_collection.where({name: "water bottle"})[0].name
    assert_equal "994", item_collection.where({merchant_id: "994"})[0].merchant_id
    assert_equal "pencil", item_collection.where({id: '4'})[0].name
  end

end
