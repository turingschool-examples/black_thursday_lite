
class SalesEngine

  attr_reader :items, :merchants

  def initialize(collection_params)
    @items = collection_params[:items]
    @merchants = collection_params[:merchants]
  end

  def self.from_csv(csv_params)
    collection = {}
    items= []
    merchants= []
    # check for converter for id
    CSV.foreach(csv_params[:items], headers: true, header_converters: :symbol) do |row|
      item = {
        id: row[:id].to_i,
        name: row[:name],
        description:row[:description],
        unit_price: row[:unit_price],
        merchant_id: row[:merchant_id].to_i
      }
      items << Item.new(item)
    end

    CSV.foreach(csv_params[:merchants], headers: true, header_converters: :symbol) do |row|
      merchant = {id: row[:id].to_i, name: row[:name]}
      merchants << Merchant.new(merchant)
    end

    collection[:items] = items
    collection[:merchants] = merchants
    self.new(collection)
  end

  def item_collection
    ItemCollection.new(@items)
  end

  def merchant_collection
    MerchantCollection.new(@merchants)
  end
end
