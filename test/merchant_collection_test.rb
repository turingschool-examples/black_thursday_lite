require './lib/merchant'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test

  def test_merchant_collection_exist
    merchant_collection = MerchantCollection.new
    assert_instance_of MerchantCollection, merchant_collection
  end

  def test_merchant_collection_all_and_add
    merchant_collection = MerchantCollection.new
    assert_equal [], merchant_collection.all
    merchant1 = Merchant.new({:id => 5, :name => "Turing School"})
    merchant_collection.add(merchant1)
    merchant2 = Merchant.new({:id => 34, :name => "Bob's Burgers"})
    merchant_collection.add(merchant2)
    merchant3 = Merchant.new({:id => 42, :name => "CHEESE!!"})
    merchant_collection.add(merchant3)
    assert_equal [merchant1,merchant2,merchant3], merchant_collection.all
  end

  def test_merchant_collection_find
    merchant_collection = MerchantCollection.new
    merchant1 = Merchant.new({:id => 5, :name => "Turing School"})
    merchant_collection.add(merchant1)
    merchant2 = Merchant.new({:id => 34, :name => "Bob's Burgers"})
    merchant_collection.add(merchant2)
    merchant3 = Merchant.new({:id => 42, :name => "CHEESE!!"})
    merchant_collection.add(merchant3)
    assert_nil merchant_collection.find(23)
    assert_equal merchant3, merchant_collection.find(42)
  end

  def test_merchant_collection_update
    merchant_collection = MerchantCollection.new
    merchant1 = Merchant.new({:id => 5, :name => "Turing School"})
    merchant_collection.add(merchant1)
    merchant2 = Merchant.new({:id => 34, :name => "Bob's Burgers"})
    merchant_collection.add(merchant2)
    merchant3 = Merchant.new({:id => 42, :name => "CHEESE!!"})
    merchant_collection.add(merchant3)
    merchant_collection.update({id: 42, name: "The Cheese House"})
    assert_equal "The Cheese House", merchant3.name
  end

  def test_merchant_collection_destory
    merchant_collection = MerchantCollection.new
    merchant1 = Merchant.new({:id => 5, :name => "Turing School"})
    merchant_collection.add(merchant1)
    merchant2 = Merchant.new({:id => 34, :name => "Bob's Burgers"})
    merchant_collection.add(merchant2)
    merchant3 = Merchant.new({:id => 42, :name => "CHEESE!!"})
    merchant_collection.add(merchant3)
    merchant_collection.destory(34)
    assert_equal [merchant1, merchant3], merchant_collection.all
  end

  def test_merchant_collection_create
    merchant_collection = MerchantCollection.new
    merchant1 = Merchant.new({:id => 5, :name => "Turing School"})
    merchant_collection.add(merchant1)
    merchant2 = Merchant.new({:id => 34, :name => "Bob's Burgers"})
    merchant_collection.add(merchant2)
    merchant3 = Merchant.new({:id => 42, :name => "CHEESE!!"})
    merchant_collection.add(merchant3)
    merchant_collection.create({name: 'Apple Tech'})
    assert_equal 4, merchant_collection.all.length
    assert_equal 'Apple Tech', merchant_collection.all.last.name
  end
end
