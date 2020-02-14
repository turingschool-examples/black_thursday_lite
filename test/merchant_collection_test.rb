require "minitest/autorun"
require "minitest/pride"
require "./lib/merchant"
require "./lib/merchant_collection"


class MerchantCollectionTest < Minitest::Test

  def setup
    @merchant1 = Merchant.new({:id => 5, :name => "Turing School"})
    @merchant2 = Merchant.new({:id => 7, :name => "Starbucks"})
    @merchant3 = Merchant.new({:id => 9, :name => "Taco Bell"})
    @merchant4 = Merchant.new({:id => 11, :name => "Hobby Lobby"})
    @merchant_collection = MerchantCollection.new([@merchant1, @merchant2, @merchant3, @merchant4])

  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_can_show_all_merchants
    assert_equal [@merchant1, @merchant2, @merchant3, @merchant4], @merchant_collection.all
  end

end
