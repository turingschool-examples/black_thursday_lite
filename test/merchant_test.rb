require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'

class MerchantTest < MiniTest::Test
  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})
  end

  def test_merchant_exists_and_has_attributes_from_hash
    assert_instance_of Merchant, @merchant
    assert_equal 5, @merchant.id
    assert_equal "Turing School", @merchant.name

  end

end
