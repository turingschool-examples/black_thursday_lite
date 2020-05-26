require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant.rb'

class MerchantTest < Minitest::Test
  def test_it_exists
    skip
    merchant = Merchant.new
    assert_instance_of Merchant, merchant
  end

  def test_merchant_has_arguments
    merchant = Merchant.new({
      :id => "5", :name => "Turing School",
      :created_at => "02-02-2006",
      :updated_at => "03-03-2008"
      })
  end

  def test_merchant_can_access_attributes
    merchant = Merchant.new({
      :id => 5, :name => "Turing School",
      :created_at => "02-02-2006",
      :updated_at => "03-03-2008"
      })

    assert_equal 5, merchant.id
    assert_equal "Turing School", merchant.name
    assert_equal "02-02-2006", merchant.created_at
    assert_equal "03-03-2008", merchant.updated_at
  end
end
