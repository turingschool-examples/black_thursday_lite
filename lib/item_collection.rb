require 'csv'

class ItemCollection

  attr_reader :id, :name, :description, :unit_price, :merchant_id

  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @description = data[:description]
    @unit_price = data[:unit_price]
    @merchant_id = data[:merchant_id]
  end

  def all
    CSV.read("items.csv")
  end

  def where(merchant_id)
    items = all
    items.map {item| item.merchant_id == merchant_id}
  end
end
