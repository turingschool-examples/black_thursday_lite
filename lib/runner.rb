require 'csv'
require 'pry'
require './lib/sales_engine'
require './lib/item_collection'
require './lib/merchant_collection'

# Items
CSV.foreach('./data/items.csv') do |item|
    id = item[0]
    name = item[1]
    description = item[2]
    unit_price = item[3]
    merchant_id = item[4]
    created_at = item[5]
    updated_at = item[6]
    item_profile = Items.new(id, name, description, unit_price, merchant_id, created_at, updated_at)
end

  CSV.foreach('./data/merchants.csv') do |merchant|
      id = merchant[0]
      name = merchant[1]
      created_at = merchant[2]
      updated_at = merchant[3]
      merchant_profile = Merchants.new(id, name, created_at, updated_at)
end


# puts CSV.read('./data/merchants.csv')

# sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv",
# })
#
# merchant_collection = sales_engine.merchants
# item_collection = sales_engine.items
# merchant = merchant_collection.find(34)
# items = item_collection.where(merchant.id)
