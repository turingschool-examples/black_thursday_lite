require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/merchant_collection'
require_relative '../lib/merchant'
require_relative '../lib/salesengine'

class MerchantCollectionTest < Minitest::Test 

  def setup
    @sales_engine = SalesEngine.from_csv({
    :items     => "./data/items.csv",
    :merchants => "./data/merchants.csv",
    })
    @merchant_collection = @sales_engine.merchant_collection
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_can_find_a_merchant
    merchant = Merchant.new({:id => 12334146, :name => "MotankiDarena"})
    @merchant_collection.find(34)
    assert_equal merchant.id, @merchant_collection.find(12334146).id 
    assert_equal merchant.name, @merchant_collection.find(12334146).name
  end

  def test_the_all_method_returns_an_array_of_merchant_objects
    list = @merchant_collection.all
    list.each do |merchant|
      assert_instance_of Merchant, merchant 
    end
  end

  def test_it_can_create_a_new_merchant_with_a_unique_id
    new_merchant = @merchant_collection.create({name: 'Monster Merchant'})
    list_merchant = @merchant_collection.all.find_all do |merchant|
      merchant.id == new_merchant.id 
    end
    assert_equal [new_merchant], list_merchant 
  end

end