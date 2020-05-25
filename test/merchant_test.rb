require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant'
require './lib/item'
require 'CSV'


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
end
