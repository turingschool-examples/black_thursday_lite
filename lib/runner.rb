require 'csv'
require './lib/sales_engine'
require "pry"; binding.pry

sales_engine = SalesEngine.from_csv({
:items     => "./data/items.csv",
:merchants => "./data/merchants.csv",})
