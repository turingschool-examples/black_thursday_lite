require 'minitest/autorun'
require 'minitest/pride'
require 'csv'
require './lib/merchant_collection'
require './lib/sales_engine'

class MerchantCollectionTest < Minitest::Test

  def setup
    @merchant = MerchantCollection.new({:id => 5, :name => "Turing School"})
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
      })
    @merchant_collection = @sales_engine.merchant_collection
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @merchant
  end

  def test_it_has_attributes
    assert_equal 5, @merchant.id
    assert_equal "Turing School", @merchant.name
  end
end
