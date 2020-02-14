require "minitest/autorun"
require "minitest/pride"
require "./lib/merchant_collection"

class MerchantCollectionTest < Minitest::Test
  def test_it_exists
    merchant_collection = MerchantCollection.from_csv({
        :merchants => "./data/merchants.csv"
      })

    assert_instance_of MerchantCollection, merchant_collection
  end

  def test_returns_all_merchants
    all_merchants = []
    CSV.foreach("path/to/file.csv") do |row|
      all_merchants << Merch
    end

  end

end
