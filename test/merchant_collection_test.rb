require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test

  def setup
    @merchant_collection = MerchantCollection.new("./data/merchants.csv")
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_is_can_find_all
    assert_equal 476, @merchant_collection.all.length

    assert_instance_of Merchant, @merchant_collection.all[1]
  end

  def test_it_can_search_for_merchant_by_id
    @merchant_collection.all
    assert_equal "DesignerEstore", @merchant_collection.find(12334155).name

    assert_instance_of Merchant, @merchant_collection.find(12334149)
  end
end
