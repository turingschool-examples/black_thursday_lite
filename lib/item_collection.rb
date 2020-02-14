require './lib/item'

class ItemCollection
  def initialize
    @items = []
  end

  def all
    @items << Item
  end

  def where(merchant_id)
    CSV.find {|row| row[:id] == merchant_id}
  end
end
