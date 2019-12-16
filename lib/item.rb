class Item

  attr_reader :id, :name, :description, :unit_price, :merchant_id

  def initialize(file_info)
    @id = file_info[:id].to_i
    @name = file_info[:name]
    @description = file_info[:description]
    @unit_price = file_info[:unit_price].to_f
    @merchant_id = file_info[:merchant_id].to_i
  end
  
end
