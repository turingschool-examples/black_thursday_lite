require 'minitest/autorun'
require 'minitest/pride'
require 'csv'
require './lib/sales_engine'
require './lib/merchants'
require './lib/merchant_collection'

class MerchantTest < Minitest:: Test

  def setup
    @all_merchants = []
    CSV.foreach("./data/merchants.csv", headers: true, header_converters: :symbol) do |row|
    @all_merchants << Merchant.new(row[:id], row[:name])
    end

    @merchant_collection = MerchantCollection.new(@all_merchants)
  end

  def test_it_exists
    assert_instance_of Merchant, @all_merchants[5]
  end

  def test_it_has_attrs
    assert_equal 475, @all_merchants.length
  end

  def test_merchant_collection_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_find_all_merchants
    assert_equal @all_merchants, @merchant_collection.all
    assert_equal 475, @merchant_collection.merchants.length
  end

  def test_find_by_id
    assert_equal @all_merchants[4], @merchant_collection.find("12334123")
    assert_equal @all_merchants[-1], @merchant_collection.find("12337411")

  end

end
