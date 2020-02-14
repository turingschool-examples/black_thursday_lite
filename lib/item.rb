class Item
 attr_reader :id, :name, :description, :unit_price, :merchant_id
def initialize(item_details)
  @id = item_details[:id]
  @name = item_details[:name]
  @description = item_details[:description]
  @unit_price = item_details[:unit_price]
  @merchant_id = item_details[:merchant_id]
end


end


# Item
# The Item instance offers the following methods:
#
# id - returns the integer id of the item
# name - returns the name of the item
# description - returns the description of the item
# unit_price - returns the price of the item
# merchant_id - returns the integer merchant id of the item
# We create an instance like this:
#
# item = Item.new({
#   :id          => 1,
#   :name        => "Pencil",
#   :description => "You can use it to write things",
#   :unit_price  => 1099,
#   :merchant_id => 2
# })
