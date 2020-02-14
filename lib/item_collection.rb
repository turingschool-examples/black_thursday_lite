class ItemCollection

  def initialize(items)
    @items = []
  end

  def all
    @items
  end

  def where(merchant_id)
    sorted_by_id = []

    @items.find_all do |item|
      if item.merchant_id == merchant_id
        sorted_by_id << item
      end
    end
  end
end
