class ItemCollection
  def initialize(items)
    @items = []
  end

  def all
    @items
  end

  def where(merchant_id)
    potential_items = []
    if item.merchant_id == merchant_id
      potential_items << item
    end
  end
end
