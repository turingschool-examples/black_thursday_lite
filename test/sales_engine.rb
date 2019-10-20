requiere 'from_csv'
sales_engine = SalesEngine.from_csv({
#We are making a hash for the sales engine instance
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})
