class ItemCollection

  def initialize()
  @items_list = []
  item_csv = CSV.foreach("./data/items.csv", headers: true, header_converters: :symbol) do |item|
    items_hash = {}
    items_hash[:id] = item[:id]
    items_hash[:name] = item[:name]
    items_hash[:unit_price] = item[:unit_price]
    items_hash[:merchant_id] = item[:merchant_id]

    @items_list << Item.new(items_hash)

  end
end

  def all
    @items_list
  end

  def where(merchant_id)
    @items_list.find_all do |item|
      item.merchant_id == merchant_id
    end
  end


end
