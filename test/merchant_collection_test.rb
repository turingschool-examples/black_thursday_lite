require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/merchant_collection'
require './lib/sales_engine'

class MerchantCollectionTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items => "./data/items.csv",
      :merchants => "./data/merchants.csv"})
    @merchant_collection = @sales_engine.merchant_collection
  end

  def test_existence
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_attributes
    assert_instance_of Array, @merchant_collection.all
    assert_instance_of Merchant, @merchant_collection.all[0]
    assert_instance_of Merchant, @merchant_collection.all[-1]
  end

  def test_get_all
    first_merchant = Merchant.new(id: 12334105, name: "Shopin1901")
    last_merchant = Merchant.new(id: 12337411, name: "CJsDecor")
    assert_equal first_merchant.id, @merchant_collection.all[0].id
    assert_equal first_merchant.name, @merchant_collection.all[0].name
    assert_equal last_merchant.id, @merchant_collection.all[-1].id
    assert_equal last_merchant.name, @merchant_collection.all[-1].name
  end

  def test_find_merchant
    merchant = Merchant.new({id: 12334123, name: "Keckenbauer"})
    assert_equal merchant.id, @merchant_collection.find(12334123).id
    assert_nil @merchant_collection.find(5)
  end

  def test_create_merchant
    created_id = @merchant_collection.create({name: 'Monster Merchant'})
    assert_equal "Monster Merchant", @merchant_collection.find(created_id).name
  end

  def test_update_merchant
    created_id = @merchant_collection.create({name: 'Monster Merchant'})
    @merchant_collection.update({id: created_id, name: 'New Merchant Name'})
    assert_equal "New Merchant Name", @merchant_collection.find(created_id).name
  end

  def test_destroy_merchant
    created_id = @merchant_collection.create({name: 'Monster Merchant'})
    @merchant_collection.destroy(created_id)
    assert_nil @merchant_collection.find(created_id)
  end

end
