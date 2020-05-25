require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'
require './lib/sales_engine'

class MerchantTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
    :items     => "./data/items.csv",
    :merchants => "./data/merchants.csv",
                                        })
    @merchant_collection = @sales_engine.merchant_collection
  end

  def test_it_has_name_id
    merchant = @merchant_collection.find(12334296)

    assert_equal "RedefinedArt84", merchant.name
    assert_equal 12334296, merchant.id
  end

end
