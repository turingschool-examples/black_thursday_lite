class Item
  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(item_parameters)
    @id = item_parameters[:id]
    @name = item_parameters[:name]
    @description = item_parameters[:description]
    @unit_price = item_parameters[:unit_price]
    @merchant_id = item_parameters[:merchant_id]
  end

end
