require "minitest/autorun"
require "minitest/pride"
require "./lib/merchant_collection"
require "./lib/sales_engine"
require "pry"

class MerchantCollectionTest < Minitest::Test

  def test_it_exists
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv"})
    merchant_collection = sales_engine.merchant_collection
  end
end


# merchant_collection = sales_engine.merchant_collection
# merchant = merchant_collection.find(34)
# # => <Merchant>
# merchants = merchant_collection.all
# # => [<Merchant>, <Merchant>...]
