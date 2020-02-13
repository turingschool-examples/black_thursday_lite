require 'csv'

CSV.foreach('./data/items.csv', headers: true) do |row|
  p row
end

CSV.foreach('./data/merchants.csv', headers: true) do |row|
  p row
end

#sales_engine = SalesEngine.from_csv({
#  :items     => "./data/items.csv",
#  :merchants => "./data/merchants.csv",
#})

#p sales_engine
