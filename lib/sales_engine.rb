require 'csv'
require 'pry'
require './lib/item_collection'
require './lib/merchant_collection'

class SalesEngine

  def initialize(files)
     @items = CSV.parse(File.read(files[:items]), headers: true)
     @merchants = CSV.parse(File.read(files[:merchants]), headers: true)
  end

  def self.from_csv(files)
     SalesEngine.new(files)
  end

  def merchant_collection
    all_merchants = @merchants.by_col.to_a
    all_merchants.shift
    all_merchants.map! do |merchant|
      merchant_id = merchant[0].to_i
      merchant_name = merchant[1]
      merchant = Merchant.new(id: merchant_id, name: merchant_name)
    end
    MerchantCollection.new(all_merchants)
  end

  def item_collection
    all_items = @items.by_col.to_a
    all_items.shift
    all_items.map! do |item|
      item_id = item[0].to_i
      item_name = item[1]
      item_desc = item[2]
      item_price = item[3].to_i
      item_merchant_id = item[4].to_i
      item = Item.new({id: item_id, name: item_name,
        description: item_desc, unit_price: item_price,
        merchant_id: item_merchant_id})
    end
    ItemCollection.new(all_items)
    # binding.pry
  end

end
