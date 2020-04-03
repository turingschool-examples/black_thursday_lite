require 'csv'

class SalesEngine

  attr_reader :merchants_array,
              :merchant_collection,
  def initialize(merchants_array, items_array)
    @merchants_array = merchants_array
    @items_array = items_array
    @merchant_collection = MerchantCollection.new(create_merchants)
  end

  def self.from_csv(data)
    merchants_array = data[:merchants]
    items_array = data[:items]
    self.new(merchants_array, items_array)
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

  def creates_items

  end

end
