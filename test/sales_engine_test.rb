require "./test/test_helper"

class SalesEngineTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end

  def test_it_exists
    assert_instance_of SalesEngine, @sales_engine
  end

###### Make separtate tests for class methods

  def test_merchant_collection_gives_array_of_merchants
    merchant_collection = @sales_engine.merchant_collection
    assert_instance_of Array, SalesEngine.merchant_collection
    assert_instance_of Merchant, merchant_collection[0]
  end

  def test_item_collection_give_array_of_items
    item_collection = @sales_engine.item_collection
    assert_instance_of Array, SalesEngine.item_collection
    assert_instance_of Item, item_collection[0]
  end

end
