require 'csv'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'

class MerchantTest < Minitest::Test
 def setup
   @merchant = Merchant.new({:id => 5, :name => "Turing School"})
 end 
end
