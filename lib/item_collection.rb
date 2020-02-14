class ItemCollection
  attr_reader :items
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def all
    @items
  end

  def where(merchant_id)
    return nil if items.find_all { |item| item.merchant_id == merchant_id }.length == 0
      items.find_all { |item| item.merchant_id == merchant_id }
  end
end
