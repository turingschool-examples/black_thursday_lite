require_relative 'item'

class ItemCollection
  attr_reader :items
  
  def initialize(items)
    @items = items.map do |item|
      Item.new(item)
    end
    
    @items.shift
  end
  
  # def where(merchant_id)
  #   self.merchants.find_all do |merchant|
  #     merchant.id.to_i == id
  #   end
  # end
end