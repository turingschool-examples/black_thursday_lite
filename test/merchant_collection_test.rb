require 'csv'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sales_engine'
require_relative '../lib/merchant.rb'
require_relative '../lib/merchant_collection.rb'
require 'pry'

class MerchantCollectionTest < Minitest::Test

        def setup
                @sales_engine = SalesEngine.from_csv({
                 :items     => "./data/items.csv",
                 :merchants => "./data/merchants.csv",
                })
		@merchant_collection = @sales_engine.merchant_collection
        end

	def test_merchant_collection_exists
		assert_instance_of MerchantCollection, @merchant_collection
	end

	def test_attributes
		assert_instance_of Merchant, @merchant_collection.all.sample
	end

	def test_find
		assert_equal @merchant_collection.all[0], @merchant_collection.find("12334105")
	end
	

end
