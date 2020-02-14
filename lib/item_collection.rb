
class ItemCollection

  attr_reader :all

  def initialize(item_collection_params)
    @all = item_collection_params
  end

  def where(merchant_id)
    @all.select {|merchant| merchant.id == merchant_id}
  end

end
