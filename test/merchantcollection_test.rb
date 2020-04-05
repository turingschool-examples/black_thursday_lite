require 'minitest/autorun'
require 'minitest/pride'
require './lib/salesengine'
require './lib/merchants'
require './lib/merchantcollection'
require './lib/items'

class MerchantCollectionTest < Minitest::Test
  def test_it_exists
    collection = MerchantCollection.new
    assert_instance_of MerchantCollection, collection
  end

  def test_it_can_return_array_of_merchant
    collection = MerchantCollection.new
    assert_equal [], collection.all
  end
end
