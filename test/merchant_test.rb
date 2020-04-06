require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
# require './lib/merchant_collection'

class MerchantTest < Minitest::Test

  def test_it_exists
    merchant = Merchant.new(:id => 5, :name => "Turing School")
    assert_instance_of Merchant, merchant
  end

  def test_it_has_attributes
    merchant = Merchant.new(:id => 5, :name => "Turing School")
    assert_equal "Turing School", merchant.name
    assert_equal 5, merchant.id
  end

end
