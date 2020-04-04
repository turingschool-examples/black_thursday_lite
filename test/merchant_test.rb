require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'

class MerchantTest < Minitest::Test

  def test_existence
    merchant = Merchant.new({:id => 5, :name => "Turing School"})
    assert_instance_of Merchant, merchant
  end

  def test_attributes
    merchant = Merchant.new({:id => 5, :name => "Turing School"})
    assert_equal 5, merchant.id
    assert_equal "Turing School", merchant.name
  end

  def test_update
    merchant = Merchant.new({:id => 5, :name => "Turing School"})
    merchant.update("Monster Merchant")
    assert_equal "Monster Merchant", merchant.name
  end

end
