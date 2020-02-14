require_relative 'test_helper'
require './lib/merchant'

class MerchantTest < MiniTest::Test

  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})
  end

  def test_it_exists
    assert_instance_of Merchant, @merchant
  end

  def test_attributes_data
    assert_equal 5, @merchant.id
    assert_equal "Turing School", @merchant.name
  end
end
