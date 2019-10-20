require 'csv'
require './lib/items_collection'
require './lib/merchant_collection'

class SalesEngine
  attr_accessor :items, :merchants

  def initialize(items, merchants)
    @items = items
    @merchants = merchants
  end

  def self.from_csv(data_paths)
  items_list = ItemsCollection.create_multiple_items(data_paths[:items])
  merchant_list = MerchantCollection.create_multiple_items(data_paths[:merchants])
  self.new(items_list, merchant_list)
  end

end
