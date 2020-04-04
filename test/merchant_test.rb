require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'

class MerchantTest < Minitest::Test
  def test_initialization_with_attributes
    merchant = Merchant.new({:id => 5, :name => "Turing School"})

    assert_instance_of Merchant, merchant
    assert_equal 5, merchant.id
    assert_equal "Turing School", merchant.name
  end
end
