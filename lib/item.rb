class Item
  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(item_info)
    @id = item_info[:id].to_i
    @name = item_info[:name]
    @description = item_info[:description]
    @unit_price = item_info[:unit_price].to_f
    @merchant_id = item_info[:merchant_id].to_i
  end
end