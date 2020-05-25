require "CSV"

class SalesEngine
  attr_reader :items, :merchants

  def initialize(collections)
    @items = collections[:items]
    @merchants = collections[:merchants]
  end

  def self.from_csv(data_path)
    items = []
    merchants = []
    collections = {}

    CSV.foreach(data_path[:items], headers: true, header_converters: :symbol) do |row|
      item = Item.new({
        id: row[:id].to_i,
        name: row[:name],
        description:row[:description],
        unit_price: row[:unit_price],
        merchant_id: row[:merchant_id].to_i
      })
      items << item
    end

    CSV.foreach(data_path[:merchants], headers: true, header_converters: :symbol) do |row|
      merchant = Merchant.new({
        id: row[:id].to_i,
        name: row[:name]
      })
      merchants << merchant
    end

    collections[:items] = items
    collections[:merchants] = merchants
    self.new(collections)
  end

  def merchant_collection
    MerchantCollection.new(@merchants)
  end

  def item_collection
    ItemCollection.new(@items)
  end


end
