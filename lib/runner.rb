require 'CSV'
require './data/items'
require './data/merchants'

CSV.foreach("./data/items.csv") do |row|
  id = row[:id].to_i
  name = row[:name]
  description = row[:description]
  unit_price = row[:unit_price].to_f
  merchant_id = row[:merchant_id]
  created_at = row[:created_at]
  updated_at = row[updated_at]
  sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})
  puts "#{sales_engine} is all here."
end
