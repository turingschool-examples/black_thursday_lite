require "./lib/merchant"
require "minitest/autorun"
require "minitest/pride"

class MerchantCollectionTest < Minitest::Test

  def test_it_exists
    assert_instance_of MerchantCollection, 
  end

end
