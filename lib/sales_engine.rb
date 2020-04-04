require 'csv'

class SalesEngine
  attr_reader :item_collection,
              :merchant_collection

  def initialize(items, merchants)
    @item_colleciton = items
    @merchant_collection = merchants
  end

  def self.from_csv(data)
    items = data[:items]
    merchants = data[:merchants]
    self.new(items, merchants)
  end
end
