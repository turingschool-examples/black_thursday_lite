require 'csv'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sales_engine'
require_relative '../lib/merchant.rb'
require_relative '../lib/merchant_collection.rb'
require 'pry'

class MerchantTest < Minitest::Test

	def setup
		@sales_engine = SalesEngine.from_csv({
                 :items     => "./data/items.csv",
                 :merchants => "./data/merchants.csv",
                })
                @merchant_collection = @sales_engine.merchant_collection
	end
        
        def test_merchant_exists 
        
        end

end

