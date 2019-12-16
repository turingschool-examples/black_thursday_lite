require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './data/items.csv'
require './data/merchants.csv'

class MerchantTest < MiniTest::Test

  def test_it_exists
    merchant = Merchant.new({:id => 5, :name => "Turing School"})
    assert_instance_of Merchant, merchant
  end

  def test_it_has_an_id
    merchant = Merchant.new({:id => 5, :name => "Turing School"})

  end

  def test_it_has_a_name
    merchant = Merchant.new({:id => 5, :name => "Turing School"})


  end


end
