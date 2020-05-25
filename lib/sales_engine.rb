require 'csv'
require './lib/merchant_collection'
require './lib/item_collection'

class SalesEngine
  attr_reader :items, :merchants

  def initialize(data)
    @items = CSV.read(data[:items], headers: true)
    @merchants = CSV.read(data[:merchants], headers: true)
  end

  def from_csv(data)
    SalesEngine.new(data)
  end

  def item_collection
    ItemCollection.new(@items)
  end

  def merchant_collection
    MerchantCollection.new(@merchants)
  end
end
