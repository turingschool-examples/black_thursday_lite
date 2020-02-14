require "minitest/autorun"
require "minitest/pride"
require "./lib/merchant"
require "./lib/merchant_collection"


class MerchantCollectionTest < Minitest::Test

  def setup
    @merchant_collection = MerchantCollection.new
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end


end
