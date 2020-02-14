require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant'

class MerchantTest < Minitest::Test
  def setup
    @merchant_1 = Merchant.new({id: 5, name: "Turing School"})
  end

  def test_merchant_can_exist
    assert_instance_of Merchant, @merchant_1
  end
end
