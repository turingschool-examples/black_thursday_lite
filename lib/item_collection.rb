require './lib/item'

class ItemCollection
  attr_reader :all

  def initalize(all_items)
    @all_items = all_items
  end

  def where(merchant_id)
    @all_items.find do |item|
      item.key(merchant_id)
    end
  end
end
