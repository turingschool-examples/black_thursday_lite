require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'
# do i always start with non-csv data to test basics and then transition to pulling from csv?
# at what point do i start testing from the full csv file?
# strategy for deciding which sample lines to use?

class MerchantCollectionTest < Minitest::Test
  def setup
    @merchant_1 = Merchant.new({:id => 12334185, :name => "Madewithgitterxx"})
    @merchant_2 = Merchant.new({:id => 12334817, :name => "PlusEtsy"})
    @merchants = [@merchant_1, @merchant_2]
    @merchant_collection = MerchantCollection.new(@merchants)
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_can_list_all_merchants
    assert_equal [@merchant_1, @merchant_2], @merchant_collection.all
  end

  def test_it_can_find_a_merchant_by_id
    assert_equal @merchant_1, @merchant_collection.find(12334185)
  end
end
