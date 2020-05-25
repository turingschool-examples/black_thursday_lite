require "minitest/autorun"
require "minitest/pride"
require "./lib/merchant"
require "./lib/merchant_collection"

class MerchantCollectionTest < Minitest::Test

  def setup
    @merchant = Merchant.new({:id => 5, :name => "Turing School"})
    @sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})
  end

  def test_it_exists
    assert_instance_of MerchantCollection, @
  end


  def test_it_can_all_merchants
    assert_eqaul [@merchant],
  end

  def test_it_can_find_by_matching_id
    assert_eqaul [@merchant], @.find(5)
  end
end
