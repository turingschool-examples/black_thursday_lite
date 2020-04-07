require "minitest/autorun"
require "minitest/pride"
require "./lib/merchant"
require "pry"

class MerchantTest < Minitest::Test

  def setup
    @new_merchant = Merchant.new({:id => 5, :name => "Turing School"})

    Merchant.from_csv("./test/fixtures/merchants_truncated.csv")

    @merchant = Merchant.all.first
  end

  def test_it_exists
    assert_instance_of Merchant, @new_merchant
  end

  def test_it_has_attributes
    assert_equal 5, @new_merchant.id
    assert_equal "Turing School", @new_merchant.name
  end

  def test_it_can_create_merchants_from_csv
    assert_instance_of Merchant, @merchant
    assert_equal 34, @merchant.id
    assert_equal "Candisart", @merchant.name
  end

  def test_it_has_all
    assert_instance_of Array, Merchant.all
    assert_equal 4, Merchant.all.length
    assert_instance_of Merchant, Merchant.all.first
  end

  def test_it_can_find_by_id
    assert_equal @merchant, Merchant.find(34)
  end
end
