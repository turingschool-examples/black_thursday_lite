require './lib/merchant_collection'
require './lib/item_collection'
require 'csv'
require 'pry'

class SalesEngine

  attr_reader :all_items,
              :all_merchants

  def initialize(items, merchants)
    @all_items = items
    @all_merchants = merchants
  end

  def self.from_csv(csv_data)
    items = csv_data[:items]
    merchants = csv_data[:merchants]
    self.new(items, merchants)
  end

  def item_collection
    item_collection = []
    CSV.foreach(@all_items, headers: true, header_converters: :symbol) do |row|
      item_params = {}
      item_params[:id] = row[0]
      item_params[:name] = row[1]
      item_params[:description] = row[2]
      item_params[:unit_price] = row[3]
      item_params[:merchant_id] = row[4]
      new_item = Item.new(item_params)
      item_collection << new_item
    end
    ItemCollection.new(item_collection)
  end

  def merchant_collection
    merchant_collection = []
    CSV.foreach(@all_merchants, headers: true, header_converters: :symbol) do |row|
      merchant_params = {}
      merchant_params[:id] = row[0]
      merchant_params[:name] = row[1]
      new_merchant = Merchant.new(merchant_params)
      merchant_collection << new_merchant
    end
    MerchantCollection.new(merchant_collection)
  end
end
