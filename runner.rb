require './lib/sales_engine'

sales_engine = SalesEngine.from.csv({ :items => "./data/items.csv",
  :merchants => "./data/merchants.csv"})
