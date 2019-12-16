require './lib/item_collection'
require './lib/merchant_collection'

class SalesEngine
  attr_reader :items_filepath, :merchants_filepath

  def initialize(info)
    @items_filepath = info[:items]
    @merchants_filepath = info[:merchants]
  end

  def self.from_csv(info)
    self.new(info)
  end

  def items
    item_collection = ItemCollection.new(@items_filepath)
    item_collection.all
  end

  def merchants
    merchant_collection = MerchantCollection.new(@merchants_filepath)
    merchant_collection.all
  end

  def merchant_collection
    MerchantCollection.new(@merchants_filepath)
  end

  def item_collection
    ItemCollection.new(@items_filepath)
  end

end

#Is merchant_collection or merchants supposed to return an instance of
#merchant collection. In the iteration pattern it gives both.
