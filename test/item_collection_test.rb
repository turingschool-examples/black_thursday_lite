require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/item_collection'
require_relative '../lib/salesengine'

class ItemCollectionTest < Minitest::Test 

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

  def test_all_returns_an_array_of_item_objects
    items = @item_collection.all
    items.each do |item|
      assert_instance_of Item, item 
    end
  end

  def test_method_where_returns_an_array_of_items_whose_merchant_id_matches_the_one_given
    items = @item_collection.where(12334185)
    items.each do |item|
      assert_equal 12334185, item.merchant_id.to_i 
    end
  end

 

end