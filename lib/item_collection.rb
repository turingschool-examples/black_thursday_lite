class ItemCollection

  def initialize(items)
    @items = items
  end

  def all
    @items
  end

  def where(attributes)
    found = []
    attributes.each do |attribute, value|
      found << @items.find_all{|item|  item.information[attribute] == value.to_s}
    end
    found.flatten
  end
  
end
