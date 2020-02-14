require 'csv'

class SalesEngine
  attr_reader :item_collection,
              :merchant_collection

  def self.from_csv(data)
    items = data[:items]
    merchants = data[:merchants]
    self.new(items, merchants)
  end
  
  def initialize(items, merchants)
    require "pry"; binding.pry
    @item_collection = items
    @merchant_collection = merchants
  end


end
