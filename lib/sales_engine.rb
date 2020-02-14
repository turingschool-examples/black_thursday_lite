class SalesEngine
  attr_reader :merchants,
              :items

  def initialize(sales_data)
    @items = ItemCollection.new(sales_data[:items])
  end

  def self.from_csv(sales_raw_data)
    self.new(sales_raw_data)
  end
end
