class Item

  def id


  end

  def name

  end

  def description

  end

  def unit_price

  end

  def merchant_id

  end

end

#   `id` - returns the integer id of the item
#   `name` - returns the name of the item
#   `description` - returns the description of the item
#   `unit_price` - returns the price of the item
#   `merchant_id` - returns the integer merchant id of the item

item = Item.new({
  :id          => 1,
  :name        => "Pencil",
  :description => "You can use it to write things",
  :unit_price  => 1099,
  :merchant_id => 2
})
