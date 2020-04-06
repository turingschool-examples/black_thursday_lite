class Item

  attr_reader :id, :name, :decription, :unit_price, :merchant_id

  def initialize(item_hash)
    @id = item_hash[:id]
    @name = item_hash[:name]
    @description = item_hash[:description]
    @unit_price = item_hash[:unit_price]
    @merchant_id = item_hash[:merchant_id]
  end

end
