require_relative 'item.rb'

class ItemCollection

	attr_reader :items

	def initialize(items)
		items.shift
		@items = items.map do |item|
			item = Item.new(item)
		end
	end
			

	def where(id)
		items.find_all { |item| item.merchant_id == id}.compact
	end
end
