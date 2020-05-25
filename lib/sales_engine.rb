require 'csv'
require './lib/merchant'
require './lib/item'

class SalesEngine

  def self.from_csv(info_params)
    @info_params = info_params
  end

  def self.merchant_collection
    MerchantCollection.new(@info_params[:merchants])
  end

  def self.item_collection
    ItemCollection.new(@info_params[:items])
  end
end
