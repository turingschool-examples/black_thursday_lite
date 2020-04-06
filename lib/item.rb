class Item
  attr_reader :name, :id, :description, :unit_price, :merchant_id

  def initialize(item_perameter)
    @name = item_perameter[:name]
    @id = item_perameter[:id]
    @description = item_perameter[:description]
    @unit_price = item_perameter[:unit_price]
    @merchant_id = item_perameter[:merchant_id]
  end
end
