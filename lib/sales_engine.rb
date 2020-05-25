require "./lib/merchant_collection"
require "./lib/item_collection"

class SalesEngine

  def initialize(sales_information)
    @items = sales_information[:items]
    @merchants = sales_information[:merchants]
  end

  def self.from_csv(sales_information)
    self.new(sales_information)
  end

  def merchant_collection
    MerchantCollection.new(@merchants)
  end

  def item_collection
    ItemCollection.new(@items)
  end

end
