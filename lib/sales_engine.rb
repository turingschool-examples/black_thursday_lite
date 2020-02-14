require 'CSV'
require './lib/item'
require './lib/merchant'
require './lib/merchant_collection'
require './lib/items_collection'

class SalesEngine

  attr_reader :items_collection, :merchant_collection

  def initialize
    @items_collection = ItemCollection.new()
    @merchant_collection = MerchantCollection.new()
  end

  def self.from_csv(data_hash)
    sales_engine = SalesEngine.new
    CSV.foreach(data_hash[:items], headers: true) do |row|
      sales_engine.items_collection.add(Item.new({
            :id => row['id'],:name => row['name'],:description => row['description'],
            :unit_price => row['unit_price'], :merchant_id => row['merchant_id']
        }))
    end
    CSV.foreach(data_hash[:merchants], headers: true) do |row|
      sales_engine.merchant_collection.add(Merchant.new({:id => row['id'], :name => row['name']}))
    end
    sales_engine
  end

end
