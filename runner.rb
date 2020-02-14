require 'CSV'
require './lib/sales_engine'
require './lib/item'
require './lib/item_collection'
require './lib/merchant'
require './lib/merchant_collection'
#
# sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv",
# })

# merchant_collection = sales_engine.merchant_collection
# merchant = merchant_collection.find(34)
# puts merchant
# merchants = merchant_collection.all

CSV.foreach("./data/items.csv", headers: true, header_converters: :symbol) do |row|
  Item.new(Hash.new(row))
end

CSV.foreach("./data/merchants.csv", headers: true, header_converters: :symbol) do |row|
  Merchant.new(Hash.new(row))
end

items = ItemCollection.new
items.where(31)

all_items = CSV.foreach("./data/items.csv", headers: true, header_converters: :symbol) do |row|
  items.all
end

# all_items.where(31)
