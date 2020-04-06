require './lib/item'

class ItemCollection
  attr_reader :all

  def initialize(all_items)
    @all = all_items
  end

  def where(merchant_id)
    @all.find_all do |item|
      item.merchant_id == merchant_id
    end
  end
end
