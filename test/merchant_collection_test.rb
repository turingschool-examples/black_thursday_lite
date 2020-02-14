require 'minitest/autorun'
require 'minitest/pride'
require 'CSV'
require './lib/merchant'


class MerchantCollectionTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
    merchant_collection = sales_engine.merchant_collection
  end

  def test_it_can_return_all_objects
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
    merchants = merchant_collection.all

    assert_equal [], merchants
  end

  def test_it_can_return_find_objects
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
    merchant = merchant_collection.find(34)

    assert_equal merchant_object, merchant
  end
end
