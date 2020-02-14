require 'pry'
class ItemCollection

  def initialize
    @items = []
  end

  def all
    @items
  end

  def add(item)
    @items << item
  end

  def where(search_parameter)
    search_array = search_parameter.to_a
    if search_array[0][0] == :merchant_id
      @items.find_all {|item| search_array[0][1] == item.merchant_id}
    elsif search_array[0][0] == :name
      @items.find_all {|item| search_array[0][1] == item.name}
    elsif search_array[0][0] == :unit_price
      @items.find_all {|item| search_array[0][1] == item.unit_price}
    elsif search_array[0][0] == :id
      @items.find_all {|item| search_array[0][1] == item.id}
    elsif search_array[0][0] == :description
      @items.find_all {|item| search_array[0][1] == item.description}
    end
  end

end
