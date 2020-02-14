# require "./data/items.csv"
# require "./data/merchants.csv"
require "csv"

class SalesEngine
  attr_reader :item_collection, :merchant_collection
  def initialize()
    @item_collection = data[:item_collection]
    @merchant_collection = data[:merchant_collection]
  end

  def from_csv
    

  end

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})
end
#`item_collection` returns an array of all items (This method will probably
#(definitely) end up referencing an instance of `ItemCollection`)

#`merchant_collection` returns an array of all merchants (This method will
#probably (definitely) end up referencing an instance of `MerchantCollection`)
