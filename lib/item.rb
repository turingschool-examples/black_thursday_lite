class Item

  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(arguments)
    @id = arguments[:id]
    @name = arguments[:name]
    @description = arguments[:description]
    @unit_price = arguments[:unit_price]
    @merchant_id = arguments[:merchant_id]
  end

end
