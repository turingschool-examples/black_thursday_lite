class ItemCollection
  attr_reader :all
  def initialize(items)
    @all = items
  end

  def find(id)
    @all.select{|item| item.merchant_id == id}
  end
end
