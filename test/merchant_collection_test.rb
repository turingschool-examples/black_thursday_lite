require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'
require 'pry'

class MerchantCollection < MiniTest::Test
  def test_it_exists
    collection = MerchantCollection.new

    assert_instance_of MerchantCollection, collection
  end
end
