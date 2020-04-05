require './lib/salesengine'
require './lib/merchants'
require './lib/items'
require './lib/merchantcollection'
require "CSV"

# sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv",
# })

CSV.foreach('./data/merchants.csv', headers: true, header_converters: :symbol) do |row|
  id = row[:id].to_i
  first_name = row[:first_name]
  last_name = row[:last_name]
  age = row[:age].to_i
  merchant = Merchant.new(id,first_name, last_name, age)
  puts "#{merchant.full_name} has been created!"
end
