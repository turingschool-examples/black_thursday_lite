class Item
  attr_reader :id, :name, :description, :unit_price, :merchant_id

  def initialize(item_param)
    @id = item_param[:id]
    @name = item_param[:name]
    @description = item_param[:description]
    @unit_price = item_param[:unit_price]
    @merchant_id = item_param[:merchant_id]
  end
end
