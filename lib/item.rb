class Item
  attr_reader :id, :name, :description, :unit_price, :merchant_id

  def initialize(attribute)
    @id          = attribute[:id]
    @name        = attribute[:name]
    @description = attribute[:description]
    @unit_price  = attribute[:unit_price]
    @merchant_id = attribute[:merchant_id]
  end

end
