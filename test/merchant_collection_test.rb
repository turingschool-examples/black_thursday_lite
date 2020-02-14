require "minitest/autorun"
require "minitest/pride"
require "./lib/merchant_collection"
require "./lib/merchant"

class MerchantCollectionTest < Minitest::Test
  def test_that_it_exists
    csv_path = "./data/merchants"
    merchant_collection = MerchantCollection.new(csv_path)

    assert_instance_of MerchantCollection, merchant_collection
  end

  def test_that_it_can_read_its_attributes
    csv_path = "./data/merchants"
    merchant_collection = MerchantCollection.new(csv_path)

    assert_equal "./data/merchants", merchant_collection.file_path
    assert_equal [], merchant_collection.merchants
  end

  def test_it_can_create_merchant_items
    csv_path = "./data/merchants"
    merchant_collection = MerchantCollection.new(csv_path)
    input = {name:"Ryan", id:31}
    assert_instance_of Merchant, merchant_collection.instantiate_merchant(input)
    assert_equal "Ryan", merchant_collection.instantiate_merchant(input).name
    assert_equal 31, merchant_collection.instantiate_merchant(input).id

  end

end
