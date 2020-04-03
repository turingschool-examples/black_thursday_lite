class ItemCollection
  attr_reader :all

  def initialize(item_collection)
    @all = item_collection
  end

  def where(merchant_id)
    @all.find_all{ |item| item.merchant_id == merchant_id}
  end
end
