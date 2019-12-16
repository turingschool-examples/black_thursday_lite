require_relative 'merchant_collection'
require_relative 'item_collection'

class SalesEngine
  attr_reader :sales_data
  
  def initialize(sales_data)
    @sales_data = sales_data
    @items = sales_data[:items]
    @merchants = sales_data[:merchants]
  end
  
  def self.from_csv(sales_data)
    new(sales_data)
  end
  
  def merchant_collection
    MerchantCollection.new(CSV.read(@merchants))
  end
  
  def item_collection
    ItemCollection.new(CSV.read(@items))
  end
end