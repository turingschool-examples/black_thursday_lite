require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test

  def setup
    @merchant_collection = MerchantCollection.new("./data/merchants.csv")
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_has_array_of_merchant_objects
    assert_equal  475, @merchant_collection.all.count
    assert_equal true, @merchant_collection.all.all? { |merchant| merchant.class == Merchant}
  end

  def test_it_can_find_by_id
    found_merchant = @merchant_collection.find(12334141)
    assert_equal Merchant, found_merchant.class
    assert_equal 12334141, found_merchant.id
  end

  def test_can_create_new_merchant
    @merchant_collection.create({
      name: 'Monster Merchant'
      })

    new_merchant = @merchant_collection.find_by_name('Monster Merchant')

    assert_instance_of Merchant, new_merchant
    assert_instance_of Integer, new_merchant.id
    assert_equal true, @merchant_collection.all.include?(new_merchant)
  end

  def test_can_update_existing_merchant
    @merchant_collection.create({
      id: 34,
      name: 'Monster Merchant'
      })
    new_merchant = @merchant_collection.find(34)
    assert_equal 'Monster Merchant', new_merchant.name

    @merchant_collection.update({
      id: 34,
      name: 'New Merchant Name'
      })

    assert_equal 'New Merchant Name', new_merchant.name
  end

  def test_can_remove_merchant_from_collection
    @merchant_collection.create({
      id: 34,
      name: 'Monster Merchant'
      })
    new_merchant = @merchant_collection.find(34)
    assert_equal 'Monster Merchant', new_merchant.name

    @merchant_collection.destroy(34)
    assert_nil @merchant_collection.find(34)
  end

end
