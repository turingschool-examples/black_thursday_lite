require './lib/item'

class SalesEngine
    attr_reader :items
    @@items = []

  def initialize
  end

  def self.all
    @items
  end

  def self.from_csv(csv_data)
    # From a file: all at once
  arr_of_rows = CSV.read(csv_data[:items])
# iterator-style:
    CSV.foreach(csv_data[:items]) do |row|
      @@items << Item.new(row)
    end
    require "pry"; binding.pry
  end
end
