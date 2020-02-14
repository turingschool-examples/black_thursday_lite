require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant_collection'
require 'csv'

class MerchantCollectionTest < Minitest::Test

  def setup
    @merchant_collection = MerchantCollection.new("./data/merchants.csv")
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_has_merchants
    assert_equal 475, @merchant_collection.merchants.size
  end

  def test_it_returns_all_merchants
    assert_equal 475, @merchant_collection.all.size
  end

  def test_it_finds_specific_merchant
    expected = @merchant_collection.merchants[1]
    assert_equal expected, @merchant_collection.find(12334112)
  end

  def test_it_creates_merchants
    previous_max = @merchant_collection.merchants.map { |merchant| merchant.id.to_i}.max
    new_merchant = @merchant_collection.create({name: 'Monster Merchant'})
    assert_instance_of Merchant, new_merchant
    assert_equal new_merchant, @merchant_collection.find(previous_max + 1)
  end

  def test_it_updates_merchants
    assert_equal "Candisart", @merchant_collection.find(12334112).name

    @merchant_collection.update({id: 12334112, name: 'New Merchant Name'})

    assert_equal "New Merchant Name", @merchant_collection.find(12334112).name
  end

  def test_it_destroys_merchants
    assert_equal "Candisart", @merchant_collection.find(12334112).name

    @merchant_collection.destroy(12334112)

    assert_nil @merchant_collection.find(12334112)
  end
end
