require 'CSV'
require './lib/merchant_collection'
require './lib/item_collection'

class SalesEngine

  attr_reader :item_path, :merchant_path

  def initialize(item_path, merchant_path)
    @item_path = item_path
    @merchant_path = merchant_path
  end

  def self.from_csv(attributes)
    item_path = attributes[:items]
    merchant_path = attributes[:merchants]
    self.new(item_path, merchant_path)
  end

  def merchant_collection
     MerchantCollection.new(@merchant_path)
  end

  def item_collection
    ItemCollection.new(@item_path)
  end
end
