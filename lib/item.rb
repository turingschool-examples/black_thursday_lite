class Item
  
  def initialize(info_hash)
    @id = info_hash[:id]
    @name = info_hash[:name]
    @description = info_hash[:description]
    @unit_price = info_hash[:unit_price]
    @merchant_id = info_hash[:merchant_id]
  end



# item = Item.new({
#   :id          => 1,
#   :name        => "Pencil",
#   :description => "You can use it to write things",
#   :unit_price  => 1099,
#   :merchant_id => 2
# })
