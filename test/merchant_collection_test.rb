require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'
require './lib/sales_engine'

class MerchantCollectionTest < Minitest::Test
  def test_it_exits
    merchant = MerchantCollection.new({:id => 5, :name => "Turing School"})

    assert_instance_of MerchantCollection, merchant
  end

  def test_it_has_attributes
    merchant = MerchantCollection.new({:id => 5, :name => "Turing School"})

    assert_equal 5, merchant.id
    assert_equal "Turing School", merchant.name
  end

  def test_it_can_return_array_of_all_merchants
    merchant = MerchantCollection.new({:id => 5, :name => "Turing School"})
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    assert_equal [:merchants], merchant.all
  end

  def test_it_can_find_merchant_with_id
    merchant = MerchantCollection.new({:id => 5, :name => "Turing School"})
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })

    assert_equal merchant, merchant.find(id)
  end
end
