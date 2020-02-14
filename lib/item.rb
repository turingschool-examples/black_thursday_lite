class Item

  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(hash_parameter)
    @id = hash_parameter[:id].to_i
    @name = hash_parameter[:name]
    @description = hash_parameter[:description]
    @unit_price = hash_parameter[:unit_price].to_i
    @merchant_id = hash_parameter[:merchant_id].to_i
  end
end
