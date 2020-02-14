require './lib/merchant'
require 'minitest/autorun'
require 'minitest/pride'

class MerchantTest < Minitest::Test

  def test_merchant_exist
    merchant = Merchant.new({:id => 5, :name => "Turing School"})
    assert_instance_of Merchant, merchant
  end

  def test_merchant_attirbutes
    merchant = Merchant.new({:id => 5, :name => "Turing School"})
    assert_equal 5, merchant.id
    assert_equal "Turing School", merchant.name
  end
end
