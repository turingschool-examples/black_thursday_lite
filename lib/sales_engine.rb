class SalesEngine


  def self.from_csv(info)
    require "pry"; binding.pry
    @items = info[:items]
    @merchants = info[:merchants]
  end


  sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})


end
