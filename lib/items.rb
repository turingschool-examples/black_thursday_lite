class Item
  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(items)
    @id = items[:id]
    @name = items[:name]
    @description = items[:description]
    @unit_price = items[:unit_price]
    @merchant_id = items[:merchant_id]
  end
end
