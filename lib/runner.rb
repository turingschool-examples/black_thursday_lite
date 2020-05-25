require 'csv'

# sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv",
# })

CSV.foreach("./data/items.csv", headers: true) do |row|
  require "pry"; binding.pry
  p row
end
