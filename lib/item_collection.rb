require 'csv'
require './lib/item'

class ItemCollection
  attr_reader :item_file

  def initialize(item_file)
    @item_file = item_file
  end
end
