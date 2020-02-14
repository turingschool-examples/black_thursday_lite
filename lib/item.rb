class Item

  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(details)
    @id = details[:id]
    @name = details[:name]
    @description = details[:description]
    @unit_price = details[:unit_price]
    @merchant_id = details[:merchant_id]
  end

end
