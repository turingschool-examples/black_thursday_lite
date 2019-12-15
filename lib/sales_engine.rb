class SalesEngine
  attr_reader :items, :merchants
  
  def self.from_csv(sales_data)
    @items = sales_data[:items]
    @merchants = sales_data[:merchants]
  end
end