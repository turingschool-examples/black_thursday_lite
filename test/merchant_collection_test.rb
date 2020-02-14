require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test
  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})
    @merchant2 = Merchant.new({:id => 6, :name => "Starbucks"})
    @merchant3 = Merchant.new({:id => 1, :name => "Pizza Hut"})
    @merchant4 = Merchant.new({:id => 9, :name => "KFC"})
    @merchants_list = [@merchant, @merchant2, @merchant3, @merchant4]
    @merchant_collection = MerchantCollection.new(@merchants_list)
  end

  def test_it_exists
    assert_instance_of Merchant, @merchant
  end

  def test_it_can_find_all_merchants
    assert_equal @merchants_list, @merchant_collection.all
  end

  def test_it_can_find_merchants_by_id
    assert_equal @merchant, @merchant_collection.find(5)
    assert_equal @merchant2, @merchant_collection.find(6)
    assert_equal @merchant3, @merchant_collection.find(1)
    assert_equal @merchant4, @merchant_collection.find(9)
    assert_nil @merchant_collection.find(11)
  end

  def test_it_can_create_new_merchants
    assert_equal 4, @merchant_collection.all.length

    @merchant_collection.create({:id => 4, :name => "Little Owl"})
    assert_equal 5, @merchant_collection.all.length
    assert_equal "Little Owl", @merchant_collection.find(4).name
  end

  def test_it_can_update_name_of_merchant
    @merchant_collection.update({:id => 1, :name => "Little Caesar's"})
    assert_equal "Little Caesar's", @merchant_collection.find(1).name
  end

  def test_it_can_destroy_the_merchant
    @merchant_collection.destroy(1)
    assert_nil @merchant_collection.find(1)
  end
end
