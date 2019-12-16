require 'csv'
require './lib/item'
require './lib/merchant'
require './lib/merchant_collection'

class SalesEngine
attr_reader :items, :merchants

  def initialize(items, merchants)
    @items = items
    @merchants = merchants
  end

  def self.from_csv(filepaths)
    items = CSV.read(filepaths[:items])
    merchants = CSV.read(filepaths[:merchants])
    items.delete_at(0)
    merchants.delete_at(0)
    item_hashes = items.map do |array|
      Item.new({
        id: array[0].to_i,
        name: array[1],
        description: array[2],
        unit_price: array[3].to_i,
        merchant_id: array[4].to_i
      })
    end
    merchant_hashes = merchants.map do |array|
      Merchant.new({id: array[0].to_i, name: array[1]})
    end
    SalesEngine.new(item_hashes, merchant_hashes)
  end

  def merchant_collection
    MerchantCollection.new(@merchants)
  end
end
