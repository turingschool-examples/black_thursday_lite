require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'
require './lib/item_collection'
require './lib/sales_engine'
require 'pry'

class MerchantCollectionTest < MiniTest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({:items => "./data/items.csv",
                                        :merchants => "./data/merchants.csv"
                                         })
    @merchant_collection = @sales_engine.merchant_collection
  end

  def test_it_exists
    binding.pry
    merchant = @merchant_collection.find(34)

  end


end
