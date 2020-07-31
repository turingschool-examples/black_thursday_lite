require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/merchant'

class MerchantTest < Minitest::Test
  def setup
    @merchant = Merchant.new({
      :id => 5,
      :name => "Turing School"
    })
  end

  def test_it_exists
    assert_instance_of Merchant, @merchant
  end

  def test_it_has_attributes
    assert_equal 5, @merchant.id
    assert_equal "Turing School", @merchant.name
  end

  def test_it_can_have_id_assigned
    merchant = Merchant.new({
      :name => "Monster Merchant"
    })
    assert_instance_of Integer, merchant.id 
  end
end
