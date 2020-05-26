require 'minitest/autorun'
require 'minitest/pride'
require './lib/item_collection'
require './lib/item'
require './lib/sales_engine'
require './lib/merchant'
require './lib/merchant_collection'
require 'CSV'
require 'pry'

class ItemCollectionTest < MiniTest::Test

  def setup
    @sales_engine = SalesEngine.new
    @sales_engine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv"
      })
    @sales_engine.read
    # @merchant_collection = MerchantCollection.new(@sales_engine)
    @merchant_collection = @sales_engine.merchant_collection
    @item_collection = @sales_engine.item_collection
  end

  def test_it_exists
    find_this_id = "12334113"
    @merchant = @merchant_collection.find(find_this_id)
    binding.pry
    items = @item_collection.where("333")
  end

end
