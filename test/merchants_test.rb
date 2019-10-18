require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchants.rb'


class MerchantsTest < Minitest::Test

  def setup
    @merchant_1 = Merchant.new({
    :id => "12334105",
    :name => "Shopin1901",
    :created_at => 2010-12-10,
    :updated_at => 2011-12-04
  })
  end

  def test_it_exists
    assert_instance_of Merchant, @merchant_1
  end

  def test_it_has_attributes
    assert_equal "12334105", @merchant_1.id
    assert_equal "Shopin1901", @merchant_1.name
    assert_equal 2010-12-10, @merchant_1.created_at
    assert_equal 2011-12-04, @merchant_1.updated_at
  end
end
