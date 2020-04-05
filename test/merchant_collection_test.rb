require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/merchant'
require './lib/merchant_collection'
require './lib/sales_engine'

class MerchantCollectionTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/small_merchants.csv",
    })
    @merchant_collection = @sales_engine.merchant_collection
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_merchant1_attributes
    assert_equal "1", @merchant_collection.collection[0].id
    assert_equal "Shopin1901", @merchant_collection.collection[0].name
    assert_equal "2010-12-10", @merchant_collection.collection[0].created_at
    assert_equal "2011-12-04", @merchant_collection.collection[0].updated_at
  end

  def test_it_returns_merchant_by_id
    assert_equal @merchant_collection.collection[0], @merchant_collection.find('1')
  end

  def test_it_returns_all_merchants
    assert_equal 4, @merchant_collection.all.length
  end

  def test_create_merchant
    @merchant_collection.create({name: 'Monster Merchant'})
    assert_equal 'Monster Merchant', @merchant_collection.all.last.name
  end

  def test_it_updates_merchant_name
    @merchant_collection.update({id: '3', name: 'Flower Merchant'})
    assert_equal "Flower Merchant", @merchant_collection.find('3').name
  end

  def test_it_deletes_merchant_by_id
    @merchant_collection.update({id: '3', name: 'Flower Merchant'})
    assert_equal "Flower Merchant", @merchant_collection.find('3').name
    @merchant_collection.destroy('3')
    assert_nil @merchant_collection.find('3')
  end



end
