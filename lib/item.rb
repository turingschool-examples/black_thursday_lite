class Item
  attr_reader :id, :name, :description, :unit_price, :merchant_id
  def initialize(**attr)
    @id = attr[:id]
    @name = attr[:name]
    @description = attr[:description]
    @unit_price = attr[:unit_price]
    @merchant_id = attr[:merchant_id]
  end
end
