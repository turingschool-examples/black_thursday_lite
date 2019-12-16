class Item

	attr_reader :id, :name, :description, :unit_price, :merchant_id

	def initialize(item_info)
		@id = item_info[0]
		@name = item_info[1]
		@description = item_info[2]
		@unit_price = item_info[3]
		@merchant_id = item_info[4]
	end

end
