require './lib/sales_engine'
require 'csv'

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})


merchant_collection = sales_engine.merchants
item_collection = sales_engine.items

all_pencils = item_collection.where({merchant_id: 34})
all_pencils = item_collection.where({name: 'Pencil'})
all_fifty_cent_items = item_collection.where({price: 50})
require "pry"; binding.pry


#merchant = Merchant.new({:id => 5, :name => "Turing School"})
