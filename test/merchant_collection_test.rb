require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'
require './lib/merchant'

class MerchantCollectionTest < MiniTest::Test
  def setup
    @merchant_collection = MerchantCollection.new("./data/merchants.csv")
  end

  def test_merchant_collection_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_merchants_array_initializes_merchant_objects
    assert_instance_of Array, @merchant_collection.all
    assert_instance_of Merchant, @merchant_collection.all[0]
    assert_instance_of Merchant, @merchant_collection.all.last
  end

  def test_find_returns_merchant_by_id
    assert_instance_of Merchant, @merchant_collection.find(12334155)
    assert_equal 12334155, @merchant_collection.find(12334155).id
  end

  def test_merchant_can_be_created
    @merchant_collection.create({name: 'Monster Merchant'})
    assert_equal 'Monster Merchant', @merchant_collection.all.find {|merchant| merchant.name == 'Monster Merchant'}.name
  end

  def test_merchant_can_be_updated_from_collection
    @merchant_collection.create({name: 'Monster Merchant'})
    @merchant_collection.update({id: 12337412, name: 'New Name'})

    assert_equal 'New Name', @merchant_collection.find(12337412).name
  end

  def test_can_destory_merchant_based_on_id
    @merchant_collection.create({name: 'Monster Merchant'})

    @merchant_collection.destroy(12337412)

    assert_nil @merchant_collection.find(12337412)
  end

end
