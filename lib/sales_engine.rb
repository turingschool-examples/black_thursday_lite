class SalesEngine
  attr_reader :sales

  def initialize(sales)
    @items = sales[:items]
    @merchants = sales[:merchants]
  end
end
