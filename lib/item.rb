class Item

  attr_reader :id, :name, :description, :unit_price, :merchant_id
  def initialize(info)
    @id = info[:id].to_i
    @name = info[:name]
    @description = info[:description]
    @unit_price = info[:unit_price].to_i
    @merchant_id = info[:merchant_id].to_i
  end


end
