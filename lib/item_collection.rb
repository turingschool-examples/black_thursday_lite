class ItemCollection
  attr_reader :all
  def initialize(items)
    @all = items
  end

  def find(id)
    @all.find { |item| item.merchant_id == item.id}
  end

  def where(merchant_id)
    @all.find_all do |item|
      item.merchant_id == merchant_id
    end
  end
end
