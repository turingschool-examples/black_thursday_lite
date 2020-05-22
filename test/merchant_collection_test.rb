require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchants'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })


end
