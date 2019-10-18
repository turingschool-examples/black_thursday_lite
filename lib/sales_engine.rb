require 'CSV'

class SalesEngine

  def self.from_csv(sales_info)
    # require "pry"; binding.pry
    @items = sales_info[:items]
    @merchants = sales_info[:merchants]
  end
end

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})
