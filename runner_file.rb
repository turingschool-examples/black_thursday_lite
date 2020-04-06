require 'csv'
# require './lib/merchant'
# require './lib/sales_engine'
# require './lib/items'
# require './data/merchants.csv'
# ##.from_csv method (read csv files)
# ##csv.read
# #csv.for_each
# merchants = CSV.read('./data/merchants.csv')
# require "pry"; binding.pry
# puts merchants
# #
CSV.foreach('./data/merchants.csv') do |row1|
  row1[0]
  row1[1]
  require "pry"; binding.pry
puts row1.inspect
end
