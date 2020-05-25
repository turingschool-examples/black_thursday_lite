require "./lib/merchant_collection"
require "./lib/item_collection"

class SalesEngine

  def self.from_csv(sales_information)
    @sales_information = sales_information
    self
  end

  def self.merchant_collection
    MerchantCollection.new(@sales_information[:merchants])
  end

  def self.item_collection
    ItemCollection.new(@sales_information[:items])
  end

end
