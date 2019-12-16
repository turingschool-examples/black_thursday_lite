class Merchant
		
	attr_reader :id, :name
		
	def initialize(merchant_info)
		@id = merchant_info[0]
		@name = merchant_info[1]
	end
end
