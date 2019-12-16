require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'
require './lib/merchant'

class MerchantCollectionTest < Minitest::Test
  def setup
    @merchant1 = Merchant.new({id: 1, name: "Shawn"})
    @merchant2 = Merchant.new({id: 2, name: "Michael"})
    @merchant3 = Merchant.new({id: 3, name: "Sarah"})
    @merchants = [@merchant1, @merchant2, @merchant3]
  end

  def test_it_exists
    merchant_collection = MerchantCollection.new(@merchants)

    assert_instance_of MerchantCollection, merchant_collection
  end
end
