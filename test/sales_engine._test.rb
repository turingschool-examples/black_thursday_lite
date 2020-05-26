require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/sales_engine'
# require './data/items.csv'
# require './data/merchants.csv'
require 'csv'

class SalesEngineTest < Minitest::Test

  def test_it_exists
    sales_engine = SalesEngine.new

    assert_instance_of SalesEngine, sales_engine
  end

  def test_can_read_data
    skip
    sales_engine = SalesEngine.new

    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    assert_equal "./data/items.csv", sales_engine.items
  end

  def test_it_can_find_collection_of_merchants
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    merchant_collection = sales_engine.merchant_collection
    merchant = merchant_collection.find(34)
    # => <Merchant>
    merchants = merchant_collection.all
    # => [<Merchant>, <Merchant>...]
    assert_equal [], sales_engine.merchant_collection
  end


end
