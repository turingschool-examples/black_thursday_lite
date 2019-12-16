require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sales_engine'
require_relative '../lib/merchant_collection'
require_relative '../lib/item_collection'

class MerchantCollectionTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    @merchant_collection = @sales_engine.merchants
    @item_collection = @sales_engine.item_collection
  end
  
  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end
  
  def test_you_can_find_all_instances_of_given_merchant_id
    skip
  end
end