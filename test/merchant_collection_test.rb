require './test/test_helper'
require './lib/merchant_collection'

class MerchantCollectionTest < MiniTest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    @merchant_collection = @sales_engine.merchant_collection
  end

  def test_merchant_find_method
    # @merchant = @merchant_collection.find(34)
    # => <Merchant>
  end

  def test_merchant_all_method
    # @merchants = @merchant_collection.all
    # => [<Merchant>, <Merchant>...]
  end

end
