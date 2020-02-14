require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'

class MerchantTest < Minitest::Test

  def setup
    @merchant = Merchant.new(12334105, "Shopin1901", "2010-12-10", "2011-12-04")
  end

  def test_merchant_exists

    assert_instance_of Merchant, @merchant
  end

  def test_merchant_has_attributes

    assert_equal 12334105, @merchant.id
    assert_equal "Shopin1901", @merchant.name
    assert_equal "2010-12-10", @merchant.created_at
    assert_equal "2011-12-04", @merchant.updated_at
  end
end
