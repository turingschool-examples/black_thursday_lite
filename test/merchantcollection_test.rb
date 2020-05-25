require 'minitest/autorun'
require 'minitest/pride'
require './lib/salesengine'
require './lib/merchantcollection'
require './lib/merchant'
require 'pry'
require 'csv'

class MerchantCollectionTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({:items => "./data/items.csv", :merchants => "./data/merchants.csv"})

    @merchant_collection = @sales_engine.merchant_collection
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_starts_with_all_merchants
    assert_equal 12334105, @merchant_collection.all.first.id
    assert_equal 475, @merchant_collection.all.count
  end

  def test_it_can_find_by_id
    assert_equal ({:id => 12334105, :name => "Shopin1901"}), @merchant_collection.find(12334105)
  end
end
