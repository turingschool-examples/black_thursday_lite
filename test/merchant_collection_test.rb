require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'
require './lib/sales_engine'

class MerchantCollectionTest < Minitest::Test

  def test_it_shows_all_merchants
    merchant1 = Merchant.new({:id => 5, :name => "Turing School"})
    merchant_collection = MerchantCollection.new(merchant1)
    # merchant2 = Merchant.new({:id => 4, :name => "Galvanize"})
    # merchant_collection = MerchantCollection.new(merchant2)

    assert_equal merchant1, merchant_collection.all
  end
end
