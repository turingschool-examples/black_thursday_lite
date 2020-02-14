require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant'
require './lib/merchant_collection'

class MerchantCollectionTest < MiniTest::Test
  @merchant = Merchant.new({
    :id => 5,
    :name => "Turing School"
  })


end
