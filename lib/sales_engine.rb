require "CSV"

class SalesEngine

  attr_reader :items, :merchants
  def initialize(items, merchants)
    @items = items
    @merchants = merchants
  end

  def self.from_csv(path_info)
    items_argument = ItemCollection.new(item_collection(path_info[:items]))
    merchants_argument = MerchantCollection.new(merchant_collection(path_info[:merchants]))
    self.new(items_argument, merchants_argument)
  end

  def self.merchant_collection(merchant_data)
    merchants_array = []
    CSV.foreach(merchant_data, headers: true, header_converters: :symbol) do |row|
      id = row[:id].to_i
      name = row[:name]
      merchants_array << Merchant.new({id: id, name: name})
    end
    merchants_array
  end

  def self.item_collection(item_data)
    items_array = []
    CSV.foreach(item_data, headers: true, header_converters: :symbol) do |row|
      id = row[:id].to_i
      name = row[:name]
      description = row[:description]
      unit_price = row[:unit_price].to_i
      merchant_id = row[:merchant_id].to_i
      items_array << Item.new({id: id,
                               name: name,
                               description: description,
                               unit_price: unit_price,
                               merchant_id: merchant_id})
    end
    items_array
  end
end
