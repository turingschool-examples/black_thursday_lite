require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test

  def test_initialization_with_attributes
    merch_collect_instance = MerchantCollection.new
    assert_instance_of MerchantCollection, merch_collect_instance
    assert_equal [], merch_collect_instance.merchant_collection
  end

  def test_add_merchant
    merch_collect_instance = MerchantCollection.new
    merch_collect_instance.add_merchant({:id => "420", :name => "Smokey's"})
    assert_instance_of Merchant, merch_collect_instance.merchant_collection[0]

    assert_equal "420", merch_collect_instance.merchant_collection[0].id
    assert_equal "Smokey's", merch_collect_instance.merchant_collection[0].name

    merch_collect_instance.add_merchant({:id => "666", :name => "Mr. Satan"})
    assert_equal 2, merch_collect_instance.merchant_collection.length
  end

  def test_all
    merch_collect_instance = MerchantCollection.new
    merch_collect_instance.add_merchant({:id => "420", :name => "Smokey's"})
    merch_collect_instance.add_merchant({:id => "666", :name => "Mr. Satan"})

    assert_equal merch_collect_instance.merchant_collection, merch_collect_instance.all
  end

  def test_find
    merch_collect_instance = MerchantCollection.new
    sales_engine = SalesEngine.from_csv({
      :merchants => "./data/merchants.csv",
    })
    # 12334115,LolaMarleys,2008-06-09,2015-04-16
    assert_equal merch_collect_instance.all[3], merch_collect_instance.find(12334115)
  end


end
