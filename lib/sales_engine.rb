require 'csv'
require_relative 'merchant.rb'

class SalesEngine


	attr_reader :items, :merchants	
	
	def initialize(file_info)
		@items = CSV.read(file_info[:items])
		@merchants = CSV.read(file_info[:merchants])
	end

	def self.from_csv(file_info)
		self.new(file_info)		
	end

	def merchant_collection
		merchant_collection = MerchantCollection.new(merchants)
	end
end
