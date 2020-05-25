require "./lib/merchant_collection"
require "./lib/item_collection"

class SalesEngine
  attr_reader :merchants, :items

  def initialize(sales_information)
    @items_file_path = sales_information[:items]
    @merchants_file_path = sales_information[:merchants]
    @items = item_collection
    @merchants = merchant_collection
  end

  def self.from_csv(sales_information)
    self.new(sales_information)
  end

  def merchant_collection
    MerchantCollection.new(@merchants_file_path)
  end

  def item_collection
    ItemCollection.new(@items_file_path)
  end

end
