require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/item_collection'

class MerchantCollectionTest < Minitest::Test
  def setup
    @item_collection = ItemCollection.new({
      :items     => "./data/items.csv"
    })
  end
  
  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end
end