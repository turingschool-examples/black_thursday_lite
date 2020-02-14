require_relative 'test_helper.rb'
require './lib/merchant_collection.rb'
require './lib/merchant.rb'

class MerchantCollectionTest < Minitest::Test

  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})
    @merchant_collection = MerchantCollection.new([@merchant])
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_can_return_all_known_merchants
    assert_equal [@merchant], @merchant_collection.all
  end

end
