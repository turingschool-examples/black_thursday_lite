require 'CSV'
require './lib/item.rb'
require './lib/merchant.rb'



CSV.foreach('./data/merchants.csv', headers: true, header_converters: :symbol) do |row|
  id = row[:id].to_i
  name = row[:name]
  require "pry"; binding.pry
  date_created = row[:created_at]
  date_updated = row[:updated_at]

  merchant = Merchant.new(:id, :name, :created_at, :updated_at)
end
