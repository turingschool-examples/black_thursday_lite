require 'csv'
require 'pry'
require './lib/merchant'
require './lib/item'
require './lib/item_collection'

# items_list = []
# item_csv = CSV.foreach("./data/items.csv", headers: true, header_converters: :symbol) do |item|
#   items_hash = {}
#   items_hash[:id] = item[:id]
#   items_hash[:name] = item[:name]
#   items_hash[:unit_price] = item[:unit_price]
#   items_hash[:merchant_id] = item[:merchant_id]
#
#   items_list << Item.new(items_hash)
#
#   puts "#{items_hash[:name]} has been created"
# end
#
#
# merchant_list = []
# CSV.foreach("./data/merchants.csv", headers: true, header_converters: :symbol) do |merchant|
#   merchant_hash = {}
#   merchant_hash[:id] = merchant[:id].to_i
#   merchant_hash[:name] = merchant[:name]
#   merchant_list << Merchant.new(merchant_hash)
#
#   puts "#{merchant[:name]} was created!"
# end

collection = ItemCollection.new()
#p collection.all
p collection.where("12334185")
