class SalesEngine
  attr_reader :item_file, :merchant_file
  def initialize(data_hash)
    @item_file = data_hash[:items]
    @merchant_file = data_hash[:merchants]
  end

  def self.from_csv(data_hash)
    SalesEngine.new(data_hash)
  end

  def item_collection
    items = ItemCollection.new(@item_file)
    items.all
  end

  def merchant_collection
    merchants = MerchantCollection.new(@merchant_file)
    merchants.all
  end

end
