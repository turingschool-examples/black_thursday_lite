require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/merchant.rb'

class MerchantTest < Minitest::Test

  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})
  end

  def test_it_exists
    assert_instance_of Merchant, @merchant
  end

  def test_merchant_attributes
    assert_equal 5, @merchant.id
    assert_equal "Turing School", @merchant.name
  end

  def test_merchant_collection_find
    

  def test_merchant_all
    merchant1 = Mock("Merchant")
    merchant2 = Mock("Merchant")
    merchant3 = Mock("Merchant")

    assert_equal [merchant1, merchant2, merchant3], merchant_collection.all
end
