require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
#require './data/items.csv'
#require './data/merchants.csv'

class MerchantTest < MiniTest::Test

  def setup
    merchant = Merchant.new({:id => 5, :name => "Turing School"})

  end


end
