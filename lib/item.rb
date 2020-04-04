class Item
  attr_reader :id, :name, :description,
              :unit_price, :merchant_id

  def initialize(item)
    @id = item[:id]
    @name = item[:name]
    @description = item[:description]
    @unit_price = item[:unit_price]
    @merchant_id = item[:merchant_id]
  end

end
