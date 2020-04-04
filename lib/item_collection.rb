require './lib/item'

class ItemCollection
  attr_reader :all

  def initialize(table)
    @all = table
  end

  def where(item_info)
    @all.find_all do |item|
      if item_info.keys[0] == :merchant_id
        item.merchant_id == item_info.values[0]
      elsif item_info.keys[0] == :name
        item.name == item_info.values[0]
      elsif item_info.keys[0] == :price
        item.unit_price == item_info.values[0]
      else
        return nil
      end
    end
  end

end
