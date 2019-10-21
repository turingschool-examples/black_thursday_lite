require 'csv'
require_relative 'merchant_collection'
require_relative 'item_collection'
# require_relative '../data/items.csv'
# require_relative '../data/merchants.csv'

class SalesEngine
  attr_reader :merchants, :items

  def initialize(data)
    @data = data
    @merchants = MerchantCollection.new(@data[:merchants])
    @items = ItemCollection.new(@data[:items])
  end

  def self.from_csv(data)
    self.new(data)
  end

  def find_merchants
    @merchants.all
  end


end

