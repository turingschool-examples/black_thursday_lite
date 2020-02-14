require "./test/test_helper"

class MerchantTest < Minitest::Test

  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})
  end

  def test_it_exists
    assert_instance_of Merchant, @merchant
  end

  def test_it_has_an_id
    assert_equal 5, @merchant.id
  end

  def test_it_has_a_name
    assert_equal "Turing School", @merchant.name
  end

end



# The merchant is one of the critical concepts in our data hierarchy.
#
# id - returns the integer id of the merchant
# name - returns the name of the merchant
# We create an instance like this:
#
# merchant = Merchant.new({:id => 5, :name => "Turing School"})
