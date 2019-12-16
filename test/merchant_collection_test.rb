require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test

  def setup
    @merchant_collection = MerchantCollection.new("./data/merchants.csv")
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_is_can_find_all
    assert_equal 476, @merchant_collection.all.length

    assert_instance_of Merchant, @merchant_collection.all[1]
  end

  def test_it_can_search_for_merchant_by_id
    @merchant_collection.all
    assert_equal "DesignerEstore", @merchant_collection.find(12334155).name

    assert_instance_of Merchant, @merchant_collection.find(12334149)
  end

  def test_it_can_produce_a_random_id
    assert_nil @merchant_collection.find(@merchant_collection.random_id_generator)
  end

  def test_it_can_create_new_merchant_records
     @merchant_collection.all
     new_merchant = @merchant_collection.create({name: 'Monster Merchant'})

    assert_equal new_merchant, @merchant_collection.find(new_merchant.id.to_i)
  end

  def test_a_merchant_can_be_updated
    require "pry"; binding.pry
    # assert_equal 12334123,
  end
end
