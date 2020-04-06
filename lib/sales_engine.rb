require 'csv'

class SalesEngine
  attr_reader :merchants_file,
              :items_file

  def initialize(files)
    @merchants_file = files[:merchants]
    @items_file = files[:items]
  end

  def self.from_csv(files)
    new(files)
  end

  def item_collection
    ItemCollection.new
  end

  def merchant_collection
    MerchantCollection.new
  end
end
