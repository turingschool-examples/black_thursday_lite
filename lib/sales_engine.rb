require './lib/merchant_collection'
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
    CSV.read(info_hash[:items])
  end

  def merchants
    merchant_list = MerchantCollection.new(info_hash[:merchants])
    merchant_list.all
  end
end
