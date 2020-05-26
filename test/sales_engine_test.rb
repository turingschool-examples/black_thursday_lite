require 'minitest/autorun'
require 'minitest/pride'
require 'csv'
require './lib/item'
require './lib/merchant'
require './lib/sales_engine'

class SalesEngineTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.new
    # @sales_engine = SalesEngine.from_csv({
    #       :items     => "./data/items.csv",
    #       :merchants => "./data/merchants.csv",
    #     })
        # should this be SalesEngine.new ?
  end

  def test_it_can_read_item_collection_from_csv
    paths = {items: './test/csv_subsets/items_subset.csv'}
    @sales_engine.from_csv(paths)
    assert @sales_engine.item_collection
    assert_instance_of Item, @sales_engine.item_collection.first
  end

  def test_it_can_read_item_and_merchant_collections_from_csv
    paths = {items: './test/csv_subsets/items_subset.csv',
            merchants: './test/csv_subsets/merchants_subset.csv'}
    @sales_engine.from_csv(paths)
    assert @sales_engine.item_collection
    assert_instance_of Item, @sales_engine.item_collection.first
    assert_instance_of Merchant, @sales_engine.merchant_collection.first
  end

  def test_it_exists
    # add in assertions for merchant
  end
end
