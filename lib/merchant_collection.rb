require_relative 'merchant.rb'

class MerchantCollection

	attr_reader :all

	def initialize(merchants)
		merchants.shift
                @all = merchants.map do |merchant|
                        merchant = Merchant.new(merchant)
                end
	end
end
