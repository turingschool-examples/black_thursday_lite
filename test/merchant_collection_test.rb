require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'

class MerchantCollection < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
    @merchant_collection = sales_engine.merchant_collection
    @merchant = merchant_collection.find(34)
    @merchants = merchant_collection.all
  end

end
