require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/merchant'

class MerchantTest < Minitest::Test
  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})

  end

  def test_a_merchant_exists
    assert_instance_of Merchant, @merchant
  end

  def test_a_merchant_has_attributes
    assert_equal 5, @merchant.id
    assert_equal "Turing School", @merchant.name
  end
end