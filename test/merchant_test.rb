require'csv'
require'pry'
require'./lib/merchant'
require'./lib/sales_engine'
require'minitest/autorun'
require'minitest/pride'

class MerchantTest < MiniTest::Test

  def setup
    @merchant = Merchant.new({
      :id => 12334105,
      :name => "Shopin1901",
      :created_at => 2010-12-10,
      :updated_at => 2011-12-04
    })
  end

  def test_it_exists
    assert_instance_of Merchant, @merchant
  end

end
