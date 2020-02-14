require "minitest/autorun"
require "minitest/pride"
require "./lib/merchant_collection"
require "./lib/merchant"

class MerchantCollectionTest < Minitest::Test
  def test_that_it_exists
    csv_path = "./data/merchants.csv"
    merchant_collection = MerchantCollection.new(csv_path)

    assert_instance_of MerchantCollection, merchant_collection
  end

  def test_that_it_can_read_its_attributes
    csv_path = "./data/merchants.csv"
    merchant_collection = MerchantCollection.new(csv_path)

    assert_equal "./data/merchants.csv", merchant_collection.file_path
    assert_instance_of Array, merchant_collection.merchants
  end

  def test_it_can_create_merchant_items
    csv_path = "./data/merchants.csv"
    merchant_collection = MerchantCollection.new(csv_path)
    input = {name:"Ryan", id:31}

    assert_instance_of Merchant, merchant_collection.instantiate_merchant(input)
    assert_equal "Ryan", merchant_collection.instantiate_merchant(input).name
    assert_equal 31, merchant_collection.instantiate_merchant(input).id
  end

  def test_that_it_can_collect_merchants
    csv_path = "./data/merchants.csv"
    merchant_collection = MerchantCollection.new(csv_path)
    input1 = {name:"Ryan", id:31}
    input2 = {name:"Andy", id:60}
    merchant1 = merchant_collection.instantiate_merchant(input1)
    merchant2 = merchant_collection.instantiate_merchant(input2)
    merchant_collection.collect_merchant(merchant1)
    merchant_collection.collect_merchant(merchant2)

    assert_equal [merchant1, merchant2], merchant_collection.merchants
  end

  def test_it_can_instantiate_and_collect_merchants_from_csv_file
    csv_path = "./data/merchants.csv"
    merchant_collection = MerchantCollection.new(csv_path)
    merchant_collection.create_merchant_collection

    assert_instance_of Merchant, merchant_collection.merchants.first
    assert_instance_of Merchant, merchant_collection.merchants.last
    assert_equal 475, merchant_collection.merchants.length
  end

  def test_it_can_find_a_merchant_by_id
    csv_path = "./data/merchants.csv"
    merchant_collection = MerchantCollection.new(csv_path)
    merchant_collection.create_merchant_collection

    assert_equal "12334471", merchant_collection.find(12334471).id
    assert_equal "Hollipoop", merchant_collection.find(12334471).name
  end

end
