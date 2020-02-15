require "./lib/merchant_collection"
require "./lib/item_collection"

class SalesEngine
  attr_reader :items, :merchants

  def initialize(**files)
    @items = ItemCollection.new(files[:items])
    @items.create_item_collection
    @merchants = MerchantCollection.new(files[:merchants])
    @merchants.create_merchant_collection
  end

  def self.from_csv(csv_files)
    self.new(csv_files)
  end


end
