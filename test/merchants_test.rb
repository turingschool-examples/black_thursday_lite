require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchants'
require './lib/merchant_collection.rb'
require 'csv'

class SalesEngineTest < Minitest::Test
  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})
  end

  def test_it_exists
    assert_instance_of Merchant, @merchant
  end

  def test_merchant_has_attributes
    assert_equal 5, @merchant.id
    assert_equal "Turing School", @merchant.name
  end
end
