require 'csv'
require './lib/item'
require './lib/item_collection'
require './lib/merchant'
require './lib/merchant_collection'

class SalesEngine
attr_reader :items, :merchants

  def initialize(items, merchants)
    @items = items
    @merchants = merchants
  end

  def self.from_csv(filepaths)
    items = CSV.read(filepaths[:items], headers: true)
    merchants = CSV.read(filepaths[:merchants], headers: true)
    item_objects = items.map do |row|
      Item.new({
        id: row[0].to_i,
        name: row[1],
        description: row[2],
        unit_price: row[3].to_i,
        merchant_id: row[4].to_i
      })
    end
    merchant_objects = merchants.map do |row|
      Merchant.new({id: row[0].to_i, name: row[1]})
    end
    SalesEngine.new(item_objects, merchant_objects)
  end

  def merchant_collection
    MerchantCollection.new(@merchants)
  end

  def item_collection
    ItemCollection.new(@items)
  end
end
