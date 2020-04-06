require "minitest/autorun"
require "minitest/pride"
require "./lib/merchant_collection"
require "./lib/sales_engine"
require "pry"

class MerchantCollectionTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv"})
  end

  def test_it_exists
    merchant_collection = @sales_engine.merchant_collection
  end

  def test_it_can_find
    assert_nil @sales_engine.merchant_collection.find(34)
  end

  def test_it_can_create
   #  `create({name: 'Monster Merchant'})` - This should create a new instance of Merchant with a unique ID, and store it in our Merchant Collection.
  end

  def test_it_can_update
    # * `update({id: 34, name: 'New Merchant Name'})` - this should change the name of the Merchant instance to the given value.
    #
  end

  def test_it_can_destroy
    # * `destroy(34)` - This should remove the merchant with the given id from the Merchant Collection.
  end
end
