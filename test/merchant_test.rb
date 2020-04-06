require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require 'pry'

class MerchantTest < Minitest::Test

  def test_it_exists
    merchant = Merchant.new({:id => 5, :name => "Turing School"})
    assert_instance_of Merchant, merchant
  end

  def test_it_has_readable_attributes
    merchant = Merchant.new({:id => 5, :name => "Turing School"})
    assert_equal 5, merchant.id
    assert_equal "Turing School", merchant.name
  end


  merchant_collection = sales_engine.merchant_collection
  merchant = merchant_collection.find(34)
  # => <Merchant>
  merchants = merchant_collection.all
  # => [<Merchant>, <Merchant>...]


end
