require 'csv'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sales_engine'
require_relative '../lib/merchant.rb'
require 'pry'

class SalesEngineTest < Minitest::Test

	def setup
		@sales_engine = SalesEngine.from_csv({
 		 :items     => "./data/items.csv",
 		 :merchants => "./data/merchants.csv",
		})
	end

	def test_sales_engine_exits
		assert_instance_of SalesEngine, @sales_engine
	end

        def test_merchant_collection
                @sales_engine.merchant_collection
                binding.pry
        end
end


