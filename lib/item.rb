class Item

  attr_reader :id, :name, :description, :price, :merchant_id

  def initialize(params)
    @id = params[:id].to_i
    @name = params[:name]
    @description = params[:description]
    @price = params[:unit_price].to_i
    @merchant_id = params[:merchant_id].to_i
  end

end
