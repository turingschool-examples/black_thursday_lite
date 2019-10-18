require 'csv'

class SalesEngine
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def self.from_csv
    sales_engine = ({
    :items     => "./data/items.csv",
    :merchants => "./data/merchants.csv",
    })
  end
end
