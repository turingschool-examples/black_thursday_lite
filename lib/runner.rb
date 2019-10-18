require './lib/sales_engine'

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})

#p sales_engine.merchants
merchant_collection = sales_engine.merchants
#merchant = merchant_collection.find(34)


#merchant = Merchant.new({:id => 5, :name => "Turing School"})


require "pry"; binding.pry
