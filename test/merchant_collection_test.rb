require_relative 'test_helper.rb'
require './lib/merchant_collection.rb'

class MerchantCollectionTest < Minitest::Test

  def setup
    @merchant_collection = MerchantCollection.new
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

end
