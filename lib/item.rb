class Item
  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(argument)
    @id = argument[:id]
    @name = argument[:name]
    @description = argument[:description]
    @unit_price = argument[:unit_price]
    @merchant_id = argument[:merchant_id]
  end

end
