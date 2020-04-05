class ItemCollection

  attr_reader :collection
  def initialize(collection)
    @collection = collection
  end

  def all
    @collection
  end

  def where(key_value)
    key = key_value.keys[0]
    value = key_value.values[0]
    @collection.find_all { |item| item.send(key) == value }
  end

end
