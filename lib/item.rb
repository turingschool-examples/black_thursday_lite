require 'CSV'

class Item

  attr_reader :id, :name, :description, :unit_price, :merchant_id
  def initialize(init_hash)
    @id = init_hash[:id]
    @name = init_hash[:name]
    @description = init_hash[:description]
    @unit_price = init_hash[:unit_price]
    @merchant_id = init_hash[:merchant_id]
  end
end
