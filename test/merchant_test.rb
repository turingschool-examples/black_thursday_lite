require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/merchant'

class MerchantTest < Minitest::Test

  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})
  end

  def test_it_exists
    assert_instance_of Merchant, @merchant
  end

  def test_it_initializes_with_id_and_name
    assert_equal 5, @merchant.id
    assert_equal "Turing School", @merchant.name
  end
end
