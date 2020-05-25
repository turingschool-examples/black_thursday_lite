require 'csv'
require './lib/salesengine'

sales_engine = SalesEngine.new
sales_engine = SalesEngine.from_csv

CSV.read("./data/items.csv", headers: true)
