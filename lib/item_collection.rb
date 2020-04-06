require 'CSV'

class ItemCollection
  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(items_params)
    @id = items_params[:id]
    @name = items_params[:name]
    @description = items_params[:description]
    @unit_price = items_params[:unit_price]
    @merchant_id = items_params[:merchant_id]
  end

  def all
    CSV.read("data/items.csv")
  end

  def where(merchant_id)
  end
end
