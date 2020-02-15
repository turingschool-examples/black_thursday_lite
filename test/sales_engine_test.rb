require "minitest/autorun"
require "minitest/pride"
require "./lib/sales_engine"

class SalesEngineTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.from_csv({
                                        :items     => "./data/items.csv",
                                        :merchants => "./data/merchants.csv",
                                        })

    assert_instance_of SalesEngine, sales_engine
  end

  def test_it_can_instantiate_with_class_method_and_attributes
    sales_engine = SalesEngine.from_csv({
                                        :items     => "./data/items.csv",
                                        :merchants => "./data/merchants.csv",
                                        })

    assert_instance_of SalesEngine, sales_engine
    assert_equal "./data/items.csv", sales_engine.items.file_path
    assert_equal "./data/merchants.csv", sales_engine.merchants.file_path
  end

  def test_it_can_instantiate_merchant_collection
    sales_engine = SalesEngine.from_csv({
                                        :items     => "./data/items.csv",
                                        :merchants => "./data/merchants.csv",
                                        })
    merchant_collection = sales_engine.merchants

    assert_instance_of MerchantCollection, merchant_collection
  end

  def test_it_can_access_merchant_objects_through_sales_engine
    sales_engine = SalesEngine.from_csv({
                                        :items     => "./data/items.csv",
                                        :merchants => "./data/merchants.csv",
                                        })
    merchant_collection = sales_engine.merchants
    merchant = merchant_collection.find(12334471)

    assert_instance_of Merchant, merchant_collection.all.first
    assert_instance_of Merchant, merchant_collection.all.last
    assert_equal 475 , merchant_collection.all.length
    assert_equal "12334471", merchant.id
    assert_equal "Hollipoop", merchant.name
  end

  def test_it_can_instantiate_item_collection
    sales_engine = SalesEngine.from_csv({
                                        :items     => "./data/items.csv",
                                        :merchants => "./data/merchants.csv",
                                        })
    assert_instance_of ItemCollection, sales_engine.items
  end

  def test_it_can_access_item_objects_through_sales_engine
    sales_engine = SalesEngine.from_csv({
                                        :items     => "./data/items.csv",
                                        :merchants => "./data/merchants.csv",
                                        })
    merchant_collection = sales_engine.merchants
    item_collection = sales_engine.items
    merchant = merchant_collection.find(12334185)
    items = item_collection.where(merchant.id)

    assert_equal 6, items.length
    assert_instance_of Item, items.first
    assert_instance_of Item, items.last
    assert_equal "12334185", items[2].merchant_id
  end
end
