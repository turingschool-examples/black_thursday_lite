require 'minitest/autorun'
require 'minitest/pride'
require 'csv'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test
  def test_it_exits
    merchant_collection = sales_engine.merchant_collection
    merchant = merchant_collection.find(34)
    merchants = merchant_collection.all
  end
end
