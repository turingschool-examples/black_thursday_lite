require 'csv'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/item'
require './lib/sales_engine'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test
  def setup
    @merchant_collection = MerchantCollection.new("./data/merchants.csv")
    @merchant = Merchant.new({
      :id => 12334113,
      :name => "MiniatureBikez",
      :created_at => "2010-03-30",
      :updated_at => "2013-01-21"
    })
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_has_no_merchants
    assert_equal [], @merchant_collection.merchants
  end

  def test_it_can_create_an_array_of_all_merchant_instances
    merchants = @merchant_collection.all
    assert_equal Merchant, merchants.first.class
  end

  def test_it_can_search_for_merchants_that_match_an_id
    @merchant_collection.all

    assert_nil nil, @merchant_collection.find(5)

    found_merchant = @merchant_collection.find(12334113)
    assert_equal @merchant.id, found_merchant.id
  end

  # def test_it_can_create_new_merchants
  #   @merchant_collection.all
  #   @merchant_collection.create({name: 'Monster Merchant'})
  #   assert_equal 'Monster Merchant', @merchant_collection.all.last.name
  # end
end
