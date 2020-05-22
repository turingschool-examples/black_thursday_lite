class Item
  attr_reader :id, :name, :description, :unit_price, :merchant_id
  def initialize(params)
    @id = params[:id]
    @name = params[:name]
    @description = params[:description]
    @unit_price = params[:unit_price]
    @merchant_id = params[:merchant_id]
  end

end
