require './lib/item_collection'

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
    #needs to be item_collection
  end

  def merchants
    merchant_collection = MerchantCollection.new(@merchants_filepath)
  end

end
