require './lib/item'

class ItemCollection
  attr_reader :all

  def initialize(all_items)
    @all = all_items
  end

  def where(merchant_id)
    @all.find do |item|
      item.key(merchant_id)
    end
  end
end
