require_relative 'test_helper.rb'
require './lib/merchant_collection.rb'
require './lib/merchant.rb'
require './lib/sales_engine.rb'

class MerchantCollectionTest < Minitest::Test

  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})
    @merchant_collection = MerchantCollection.new([@merchant])
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant_collection
  end

  def test_it_can_return_all_known_merchants
    assert_equal [@merchant], @merchant_collection.all
  end

  def test_it_can_find_merchant_from_id
    assert_equal @merchant, @merchant_collection.find(5)
  end

  def test_it_can_create_new_merchants
    merchants = @sales_engine.merchants
    merchant_collection = @sales_engine.merchant_collection(merchants)
    new_merchant = merchant_collection.create({name: 'Monster Merchant'})
    assert_equal 12337412, new_merchant.id
    assert_equal 'Monster Merchant', new_merchant.name
  end

end
