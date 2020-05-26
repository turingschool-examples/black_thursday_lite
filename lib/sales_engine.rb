require './lib/merchant_collection'
require './lib/item_collection'

class SalesEngine

  attr_reader :merchants,
              :items

  def initialize(data)
    @items_path = data[:items]
    @merchants_path = data[:merchants]
    # @item_collection = []
    @merchant_collection
  end

  def self.from_csv(data)
    self.new(data)
  end

  def merchant_collection
    @merchant_collection = MerchantCollection.new(@merchants_path)
    @merchant_collection.merchant_collection
  end

  def item_collection
    @item_collection = ItemCollection.new(@items_path)
  end

end
