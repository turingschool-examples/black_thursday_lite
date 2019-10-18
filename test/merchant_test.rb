require 'minitest/autorun'
require 'minitest/pride'
require 'CSV'
require_relative '../lib/merchant'

class MerchantTest < Minitest::Test
  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})
  end

  def test_it_exists
    assert_instance_of Merchant, @merchant
  end

  def test_initialize
    assert_equal 5, @merchant.id
    assert_equal "Turing School", @merchant.name
  end
end
