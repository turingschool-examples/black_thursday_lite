require './lib/sales_engine'

sales_engine = SalesEngine.from_csv({
  :items => "./lib/items.csv",
  :merchants => "./data/merchants.csv",
  })
  
