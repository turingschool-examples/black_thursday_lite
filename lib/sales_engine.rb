require "./lib/merchant_collection"
require "./lib/item_collection"

class SalesEngine
  attr_reader :items, :merchants

  def initialize(sales_information)
    @items = sales_information[:items]
    @merchants = sales_information[:merchants]
  end

  def self.from_csv(sales_information)
    self.new(sales_information)
  end

end
