class SalesEngine

  def initialize(data)
    @items = data[:items]
    @merchants = data[:merchants]
  end

  def self.from_csv(data)
    SalesEngine.new(data)
  end

  def merchant_collection
    merchants = []
    CSV.foreach(@merchants, headers: true, header_converters: :symbol) do |row|
      merchants << Merchant.new(row)
    end
    MerchantCollection.new(merchants)
  end

  def item_collection
    CSV.foreach(@items, headers: true, header_converters: :symbol) do |row|
      Item.new(row)
    end
  end
end
