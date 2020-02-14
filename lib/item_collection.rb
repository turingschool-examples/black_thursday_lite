class ItemCollection

  def initialize(items = [])
    @items = items
  end


  def all
    @items
  end

  def where(merchant_id)
    @items.select {|item| item.merchant_id == merchant_id}
  end

  def add(item)
    @items << Item.new(item) if item
  end

end
