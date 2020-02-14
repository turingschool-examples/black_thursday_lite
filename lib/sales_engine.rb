require 'csv'
require './lib/merchant.rb'
require './lib/item.rb'
require './lib/merchant_collection.rb'
require './lib/item_collection.rb'

class SalesEngine
  attr_reader :items,
              :merchants

  def initialize(items, merchants)
    @items = items
    @merchants = merchants
  end

  def self.from_csv(sales_params)
    merchant_collection =[]
    merchants = CSV.foreach(sales_params[:merchants], headers: true, header_converters: :symbol) do |row|
      merchant_params = {id: row[:id], name: row[:name]}
      merchant_collection << Merchant.new(merchant_params)
    end
    item_collection = []
    items = CSV.foreach(sales_params[:items], headers: true, header_converters: :symbol) do |row|
      items_params = {
        id: row[:id],
        name: row[:name],
        description: row[:description],
        unit_price: row[:unit_price],
        merchant_id: row[:merchant_id]
      }
      item_collection << Item.new(items_params)
    end
    SalesEngine.new(item_collection, merchant_collection)
  end

end
