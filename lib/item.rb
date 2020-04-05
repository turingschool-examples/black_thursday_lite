class Item

  attr_reader :id, :name, :description, :unit_price, :merchant_id, :created_at, :updated_at
  def initialize(details)
    @id = details[:id]
    @name = details[:name]
    @description = details[:description]
    @unit_price = details[:unit_price]
    @merchant_id = details[:merchant_id]
    @created_at = details[:created_at]
    @updated_at = details[:updated_at]
  end

end
