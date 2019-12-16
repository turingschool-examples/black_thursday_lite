require 'csv'

class ItemCollection
  attr_reader :items
  
  def initialize(items)
    @items = items
  end
end