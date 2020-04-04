class ItemCollection

  def initialize(items)
    @items = items
  end

  def all
    @items
  end

  def where(merchant_id)
    @items.find_all do |item|
      item.merchant_id == merchant_id
    end
  end
end
