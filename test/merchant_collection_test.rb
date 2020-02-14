require 'minitest/autorun'
require 'minitest/pride'
require 'CSV'
require './lib/item'
require './lib/merchant'
require './lib/sales_engine'
require './lib/merchant_collection'
require './lib/item_collection'

class MerchantCollectionTest < Minitest::Test

  def test_it_exists
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    merchant_collection = sales_engine.merchant_collection

    assert_instance_of MerchantCollection, merchant_collection
  end


  def test_it_can_find_merchant
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    merchant_collection = sales_engine.merchant_collection

    #<Merchant:0x00007fad03098e10 @id=12337411, @name="CJsDecor">
    merchant = merchant_collection.find(12337411)

    assert_instance_of Merchant, merchant
    assert_equal 12337411, merchant.id
    assert_equal "CJsDecor", merchant.name
  end

  def test_it_can_get_all_merchants
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    merchant_collection = sales_engine.merchant_collection
    merchants = merchant_collection.all

    assert_equal 475, merchants.size
    assert_instance_of Merchant, merchants.first
  end
end
