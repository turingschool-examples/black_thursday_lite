class ItemCollection
  attr_reader :all

  def initialize(items)
    @all = items
  end

  def where(search_hash)
    category = search_hash.first[0].to_s
    value = search_hash.first[1]
    if category == "name"
      matched_items = @all.find_all { |item| item.name == value }
    elsif category == "price"
      matched_items = @all.find_all { |item| item.unit_price == value }
    elsif category == "merchant_id"
      matched_items = @all.find_all { |item| item.merchant_id == value }
    end
    matched_items = nil if matched_items.empty?
    matched_items
  end
end
