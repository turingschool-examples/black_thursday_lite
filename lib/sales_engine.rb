require 'csv'
require_relative 'merchant_collection'
require_relative 'item_collection'
# require_relative '../data/items.csv'
# require_relative '../data/merchants.csv'

class SalesEngine
  def initialize

  end

  def self.from_csv(data)
    @data = data
    @merchants = MerchantCollection.new(@data[:merchants])
    @items = ItemCollection.new(@data[:items])
    self.new
  end

  def self.merchants
    @merchants.all
  end


end

