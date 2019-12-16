require './test/test_helper'
require './lib/sales_engine'
require './lib/merchant'

class MerchantTest < MiniTest::Test

  def setup
    @merchant_1 = Merchant.new({:id => 5, :name => "Turing School"})
  end

  def test_merchant_exists
    assert_instance_of Merchant, @merchant_1
  end

end
