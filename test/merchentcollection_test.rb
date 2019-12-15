require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/itemcollection'
require './lib/merchantcollection'
require './lib/merchant'
require './lib/item'

class MerchantcollectionTest < Minitest::Test
  def test_it_exists
    merchantcollection = Merchantcollection.new("./data/merchants.csv")

    assert_instance_of Merchantcollection, merchantcollection
  end

  def test_it_can_create_all_merchants
    merchantcollection = Merchantcollection.new("./data/merchants.csv")

    assert_equal 475, merchantcollection.all("./data/merchants.csv").length
  end

  def test_it_can_find_a_merchant
    merchant = Merchant.new({:id => 12334105, :name => "Shopin1901"})
    merchantcollection = Merchantcollection.new("./data/merchants.csv")

    assert_nil merchantcollection.find(0)
    # assert_equal merchant, merchantcollection.find(12334105)
  end

end
