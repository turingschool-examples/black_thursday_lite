class Item
  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(item_information)
    @id = item_information[:id]
    @name = item_information[:name]
    @description = item_information[:description]
    @unit_price = item_information[:unit_price]
    @merchant_id = item_information[:merchant_id]
  end

end
