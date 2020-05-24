require './lib/merchant_collection'
require './lib/item_collection'
require 'csv'

class SalesEngine
  attr_reader :info_hash

  def initialize(info_hash)
    @info_hash = info_hash
  end

  def self.from_csv(info_hash)
    SalesEngine.new(info_hash)
  end

  def items
    items_list = ItemCollection.new(info_hash[:items])
    items_list.all
  end

  def merchants
    merchant_list = MerchantCollection.new(info_hash[:merchants])
    merchant_list.all
  end
end
