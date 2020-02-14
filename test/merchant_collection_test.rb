require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchants'
require 'csv'

class MerchantEngineTest < Minitest::Test
  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
      })
  end
end
