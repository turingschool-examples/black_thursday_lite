class Item

  def initialize(item_data)
    @id = item_data[0]
    @name = item_data[1]
    @description = item_data[2]
    @unit_price = item_data[3]
    @merchant_id = item_data[4]
    @created_at = item_data[5]
    @updated_at = item_data[6]
  end
end
