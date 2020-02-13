require 'minitest/autorun'
require 'minitest/pride'
require 'csv'
require './lib/sales_engine'

class SalesEngineTest < Minitest:: Test

  def setup
    @sales_engine = SalesEngine.from_csv({
    :items     => "./data/items.csv",
    :merchants => "./data/merchants.csv" })
  end

  def test_it_exists
    assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_has_attrs
    assert_equal [], @sales_engine.items
    assert_equal [], @sales_engine.merchants
  end


end

# CSV.foreach("./data/animal_lovers.csv", headers: true, header_converters: :symbol) do |row|
#   p "My name is #{row[:first_name]} and I am #{row[:age]} years old"
# end
#
#
# AnimalLover.new(row[:id], row[:first_name])
