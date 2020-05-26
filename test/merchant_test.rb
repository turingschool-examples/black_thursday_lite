require "./lib/merchant"
require "minitest/autorun"
require "minitest/pride"

class MerchantTest < Minitest::Test

  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})
  end

  def test_it_exists
    assert_instance_of Merchant, @merchant
  end

  def test_it_has_attributes
    assert_equal 5, @merchant.id
    assert_equal "Turing School", @merchant.name
  end

  def test_it_can_update_its_name
    @merchant.update_name("Turing School of Software and Design")
    assert_equal "Turing School of Software and Design", @merchant.name
  end

end
