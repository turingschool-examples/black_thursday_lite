class SalesEngine
  attr_reader :items, :merchants

  def initialize(sales_engine_parameter)
    @items = sales_engine_parameter[:items]
    @merchants = sales_engine_parameter[:merchants]
  end

  def self.from_csv

  end
end
