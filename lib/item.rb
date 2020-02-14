class Item

  attr_reader :merchant_id

  def initialize(arguments)
    @id = arguments[:id]
    @name = arguments[:name]
    @description = arguments[:description]
    @unit_price = arguments[:unit_price]
    @merchant_id = arguments[:merchant_id]
  end

end
