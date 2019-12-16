require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/itemcollection'
require './lib/merchantcollection'
require './lib/merchant'
require './lib/item'

class MerchantTest < Minitest::Test

  def test_it_exists
    merchant = Merchant.new({:id => 5, :name => "Turing School"})

    assert_instance_of Merchant, merchant
  end

  def test_it_has_attributes
    merchant = Merchant.new({:id => 5, :name => "Turing School"})

    assert_equal 5, merchant.id
    assert_equal "Turing School", merchant.name
  end
end
