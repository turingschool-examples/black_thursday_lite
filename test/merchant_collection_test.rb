require "minitest/autorun"
require "minitest/pride"
require "./lib/merchant_collection"

class MerchantCollectionTest < Minitest::Test
  def test_that_it_exists
    csv_path = "./data/merchants"
    merchant_collection = MerchantCollection.new(csv_path)

    assert_instance_of MerchantCollection, merchant_collection
  end
end
