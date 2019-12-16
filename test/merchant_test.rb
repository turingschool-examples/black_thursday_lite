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

end

