class ItemCollection

  def initialize(array)
    @known_items = array
  end

  def all
    @known_items
  end

  def where(merchant_id)
    @known_items.find {|item| item.merchant_id == merchant_id }
  end
end
