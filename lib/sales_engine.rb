require 'csv'

class SalesEngine

  attr_reader :merchants_array, :merchant_collection, :item_collection
  def initialize(merchants_array, items_array)
    @merchants_array = merchants_array
    @items_array = items_array
    @merchant_collection = MerchantCollection.new(create_merchants)
    @item_collection = ItemCollection.new(create_items)
  end

  def self.from_csv(data)
    merchants_data = data[:merchants]
    items_data = data[:items]
    self.new(merchants_data, items_data)
  end

  def create_merchants
    merchant_instances = []
    CSV.foreach(@merchants_array, headers: true, header_converters: :symbol) do |row|
      id = row[:id]
      name = row[:name]
      merchant_instances << Merchant.new({id: id, name: name})
    end
    merchant_instances
  end

  def create_items
    item_instances = []
    CSV.foreach(@items_array, headers: true, header_converters: :symbol) do |row|
      id = row[:id]
      name = row[:name]
      description = row[:description]
      unit_price = row[:unit_price]
      merchant_id = row[:merchant_id]
      item_instances << Item.new({id: id, name: name, description: description, unit_price: unit_price, merchant_id: merchant_id})
    end
    item_instances
  end

end
