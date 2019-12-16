require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'
require 'CSV'

class MerchantCollectonTest < Minitest::Test
  def test_it_exists
    merchant_collection = MerchantCollection.new("./data/merchants.csv")

    require 'pry'; binding.pry
  end
end
