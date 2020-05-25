# require 'csv'
# require 'pry'

class SalesEngine
  attr_reader :merchants, :items

  def self.from_csv(data)
    merchants = data[:merchants]
    items = data[:items]
    SalesEngine.new(merchants, items)
  end
  
sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})

merchant_collection = sales_engine.merchant_collection
merchant = merchant_collection.find(34)

merchants = merchant_collection.all

#
# class SalesEngine
#   attr_reader :merchants, :items
#
#   def self.from_csv(data)
#     merchants = data[:merchants]
#     items = data[:items]
#     SalesEngine.new(merchants, items)
#   end
#
#   def initialize(merchants, items)
#     @merchants = merchants
#     @items = items
#   end
#
#   def merchant_collection
#     CSV.foreach(@merchants) do |row|
#       @merchant_collection = row
#     end
#   end
#
#   def item_collection
#     CSV.foreach(@items) do |row|
#       @item_collection = row
#     end
#   end
# end



# sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv",
# })
# binding.pry
