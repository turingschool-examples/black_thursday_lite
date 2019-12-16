class ItemCollection
  attr_reader :all

  def initialize(items)
    @all = items
  end

  def where(merchant_id)
    matched_items = @all.find_all { |item| item.merchant_id == merchant_id }
    matched_items = nil if matched_items.empty?
    matched_items
  end
end
