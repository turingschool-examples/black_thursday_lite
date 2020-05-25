class Item
  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(info_hash)
    @id = info_hash[:id]
    @name = info_hash[:name]
    @description = info_hash[:description]
    @unit_price = info_hash[:unit_price]
    @merchant_id = info_hash[:merchant_id]
  end
end
