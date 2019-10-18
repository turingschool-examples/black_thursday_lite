require 'csv'

class SalesEngine

  def self.from_csv(store)
    p store.values
  end
end

# sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv",
#   })

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
  })

CSV.foreach('./data/items.csv', headers: true, header_converters: :symbol) do |row|
  id = row[:id]
  name = row[:name]
  description = row[:description]
  unit_price = row[:unit_price]
  merchant_id = row[:merchant_id]
  created_at = row[:created_at]
  updated_at = row[:updated_at]
end

CSV.foreach('./data/merchants.csv', headers: true, header_converters: :symbol) do |row|
  id = row[:id]
  name = row[:name]
  created_at = row[:created_at]
  updated_at = row[:updated_at]
end

#   require 'CSV'
# require './lib/animal_lover'
# headers: true & header_converter: :symbol are optional arguments
# CSV.foreach('./data/animal_lovers.csv', headers: true, header_converters: :symbol) do |row|
#   id = row[:id].to_i
#   first_name = row[:first_name]
#   last_name = row[:last_name]
#   age = row[:age].to_i
#   animal_lover = AnimalLover.new(id,first_name,last_name,age)
#
#   require 'pry'; binding.pry
#
#   puts "#{animal_lover.full_name} has been created!"
# end
