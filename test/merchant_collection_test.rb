require 'minitest/autorun'
require 'minitest/pride'
require 'csv'
require './lib/sales_engine'
require './lib/merchant'
require './lib/merchant_collection'

class MerchantCollectionTest < Minitest::Test

  def setup
    @collection = MerchantCollection.new
  end

  def test_initialization_and_attributes
    assert_instance_of MerchantCollection, @collection
    assert_equal [], @collection.merchant_collection
  end

  def test_add_merchant
    @collection.add_merchant({:id => "918", :name => "Eve's Wash and Fold"})
    assert_instance_of Merchant, @collection.merchant_collection[0]

    assert_equal "918", @collection.merchant_collection[0].id
    assert_equal "Eve's Wash and Fold", @collection.merchant_collection[0].name

    @collection.add_merchant({:id => "405", :name => "Bon Bon's Bakery"})
    assert_equal 2, @collection.merchant_collection.length
  end

  def test_all
    @collection.add_merchant({:id => "918", :name => "Eve's Wash and Fold"})
    @collection.add_merchant({:id => "405", :name => "Bon Bon's Bakery"})

    assert_equal @collection.merchant_collection, @collection.all
  end

  def test_find
    # sales_engine = SalesEngine.from_csv({
    #   :merchants => "./data/merchants.csv",
    # })
    # 12334115,LolaMarleys,2008-06-09,2015-04-16
    assert_equal @collection.all[3], @collection.find(12334115)
  end

end
# merchant_collection = sales_engine.merchant_collection
# merchant = merchant_collection.find(34)
# # => <Merchant>
# merchants = merchant_collection.all
# # => [<Merchant>, <Merchant>...]

#  EXTRA methods for next steps:
#  create({name: 'Monster Merchant'}) - This should create a new instance of Merchant with a unique ID, and store it in our Merchant Collection.
#
# update({id: 34, name: 'New Merchant Name'}) - this should change the name of the Merchant instance to the given value.
#
# destroy(34) - This should remove the merchant with the given id from the Merchant Collection.
#UPDATE THE WHERE
# With this new implementation of where, you should be able to send a key/value pair into the method
# to return all items where the attribute(key) matches the value given.
#  sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv"
# })
#
# merchant_collection = sales_engine.merchants
# item_collection = sales_engine.items
# all_pencils = item_collection.where({merchant_id: 34})
# # => [<Item>, <Item>, <Item>]
# all_pencils = item_collection.where({name: 'Pencil'})
# # => [<Item>, <Item>, <Item>]
# all_fifty_cent_items = item_collection.where({price: 50})
# # => [<Item>, <Item>, <Item>]
