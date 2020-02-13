class ItemCollection

  def initialize(all_items)
    @all_items = all_items
  end

  def where(id)
    @merchant_items = []
    @all_items.find_all do |item|
      if item.merchant_id == id
        @merchant_items << item
      end
    end
  end

end
