require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
#require './data/items.csv'
#require './data/merchants.csv'

class MerchantCollectionTest < MiniTest::Test

  def setup
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",})
  end
end
