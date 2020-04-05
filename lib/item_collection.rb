require 'CSV'

class ItemCollection

  def initialize(items = [])
    @items = items
  end

  def all
    @items
  end
end
