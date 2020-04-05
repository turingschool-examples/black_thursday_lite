require 'CSV'

class ItemCollection

  def initialize(items = [])
    @items = items
  end

  def all
    @items
  end

  def where(merchant_id)
    all.find_all { |item| item.merchant_id == merchant_id}
  end
end
