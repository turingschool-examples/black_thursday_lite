require 'minitest/autorun'
require 'minitest/pride'
require 'mechantcollection'

class MerchantCollection < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items    => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
    @merchant_collection = @sales_engine.merchant_collection
  end

end
