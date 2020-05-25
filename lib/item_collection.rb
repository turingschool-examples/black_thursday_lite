require 'csv'

class ItemCollection

  def all
    item_collection = []
    CSV.foreach(info_params[:items], headers: true, header_converters: :symbol) do |row|
      items_params = {
        id: row[:id].to_i,
        name: row[:name],
        description: row[:description],
        unit_price: row[:unit_price].to_i,
        merchant_id: row[:merchant_id].to_i
      }
      item_collection << Item.new(info_params)
    end
  end

  def where(mercahnt_id)
    all.select do |item|
      item.merchant_id
    end
  end
end
