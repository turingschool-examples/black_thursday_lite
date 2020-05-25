require 'csv'
require './lib/merchant_collection'
require './lib/item_collection'
require 'pry'

class SalesEngine
  attr_reader :merchants, :items

  def self.from_csv(data)
    merchants = data[:merchants]
    items = data[:items]
    SalesEngine.new(merchants, items)
  end

  def initialize(merchants, items)
    @merchants = merchants
    @items = items
  end

  def merchant_collection
    CSV.foreach(@merchants) do |row|
      @merchant_collection = row
      p row
    end
  end



  sales_engine = SalesEngine.from_csv({
    :items     => "./data/items.csv",
    :merchants => "./data/merchants.csv",
  })
  binding.pry
end
