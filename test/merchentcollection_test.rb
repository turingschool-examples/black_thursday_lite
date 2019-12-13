require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/itemcollection'
require './lib/merchantcollection'
require './lib/merchant'
require './lib/item'

class MerchantcollectionTest < Minitest::Test
  def test_it_exists
    merchantcollection = Merchantcollection.new

    assert_instance_of Merchantcollection, merchantcollection
  end

end
