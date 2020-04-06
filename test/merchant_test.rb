require './test/all_requires'

class MerchantTest < MiniTest::Test

  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})
  end

  def test_it_exists
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})

    assert_instance_of Merchant, @merchant
  end

  def test_it_has_readable_attributes

    assert_equal 5, @merchant.id
    assert_equal "Turing School", @merchant.name
  end
end
