class Item
  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(item_details)
    @id = item_details[:id]
    @name = item_details[:name]
    @description = item_details[:description]
    @unit_price = item_details[:unit_price]
    @merchant_id = item_details[:merchant_id]
  end

end
