require 'csv'
require 'pry'
class SalesEngine

  # attr_reader :merchant_collection
  attr_reader :merchant_collection, :merchants
  def initialize(merchants_file, items_file)
    @merchants_file = merchants_file
    @items_file = items_file
  end

  def self.from_csv(data)
    merchants_file = data[:merchants]
    items_file = data[:items]
    SalesEngine.new(merchants_file, items_file)
  end

  def merchant_collection
    merchant_collection = []
    CSV.foreach(@merchants_file, headers: true, header_converters: :symbol) do |row|
    details = {}
    row.each { |pair| details[pair[0]] = pair[1]}
    # details = {
    #             id: row[:id].to_i,
    #             name: row[:name],
    #             created_at: row[:created_at],
    #             updated_at: row[:updated_at]
    #            }
    merchant = Merchant.new(details)
    merchant_collection << merchant
    end
    MerchantCollection.new(merchant_collection)
  end

  def item_collection
    item_collection = []
    CSV.foreach(@items_file, headers: true, header_converters: :symbol) do |row|
    details = {}
    row.each { |pair| details[pair[0]] = pair[1]}
      item = Item.new(details)
      item_collection << item
    end
    ItemCollection.new(item_collection)
  end


end #final
