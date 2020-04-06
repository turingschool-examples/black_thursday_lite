class ItemCollection
  attr_reader :all
  def initialize(items)
    @all = items
  end

  def find(id)
    @items.find { |item| item.merchant_id == item.id}
  end

  def where(merchant_id)
    @itesm.find_all do |ite|
      item.merchant_id == merchant_id
  end
end
