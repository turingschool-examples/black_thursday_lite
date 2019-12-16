class Item
  attr_accessor :id, :name, :description, :unit_price, :merchant_id

  def initialize(item_info)
    @item_info = item_info
    @id = item_info[:id]
    @name = item_info[:name]
    @description = item_info[:description]
    @unit_price = item_info[:unit_price]
    @merchant_id = item_info[:merchant_id]
  end


end
