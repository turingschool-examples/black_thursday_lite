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
    merchants_array = data[:merchants]
    items_array = data[:items]
    self.new(merchants_array, items_array)
  end

  def create_merchants
    merchant_instances = []
    CSV.foreach(@merchants_array, headers: true, header_converters: :symbol) do |row|
      information = {}
      row.each{ |attributes| information[attributes[0]] = attributes[1] }
      merchant_instances << Merchant.new(information)
    end
    merchant_instances
  end

  def create_items
    item_instances = []
    CSV.foreach(@items_array, headers: true, header_converters: :symbol) do |row|
      information = {}
      row.each{ |attributes| information[attributes[0]] = attributes[1] }
      item_instances << Item.new(information)
    end
    item_instances
  end

end
