
class Item
  attr_reader :id, :name, :description, :unit_price, :merchant_id

  def initialize(info)
    @id = info[:id]
    @name = info[:name]
    @description = info[:description]
    @unit_price = info[:unit_price]
    @merchant_id = info[:merchant_id]
  end

end
