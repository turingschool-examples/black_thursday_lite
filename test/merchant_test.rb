require "minitest/autorun"
require "minitest/pride"
require './lib/merchants'
require "CSV"

class MerchantsTest < Minitest::Test

  def setup
    @merchant = Merchants.new({:id => 5, :name => "Turing School"})
  end

  def test_instance_exists
    assert_instance_of Merchants, @merchant
  end

  def test_attributes_of_merchant
    assert_equal 5, @merchant.id
    assert_equal "Turing School", @merchant.name
  end
end
