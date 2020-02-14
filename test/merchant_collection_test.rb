require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant.rb'
require './lib/merchant_collection.rb'

class MerchantCollectionTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
    assert_instance_of S
  end
end
