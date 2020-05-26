require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test

  def test_it_exists
    mer_co = MerchantCollection.new

    assert_instance_of MerchantCollection, mer_co
  end

  

end
