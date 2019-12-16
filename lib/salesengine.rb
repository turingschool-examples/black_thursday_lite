require 'csv'
require './lib/merchant_collection'
require './lib/item_collection'


class SalesEngine

  attr_reader :items, :merchants

  def initialize(items_path, merchants_path)
    @items_file_path = items_path
    @merchants_file_path = merchants_path
    @merchants = merchant_collection.all
  end

  def self.from_csv(info)
    items = info[:items]
    merchants = info[:merchants]
    self.new(items, merchants)
  end 

  def merchant_collection
    MerchantCollection.new(@merchants_file_path)
  end

   def item_collection
    ItemCollection.new(@items_file_path)
  end

end