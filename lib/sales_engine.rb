require 'csv'

class SalesEngine

  attr_reader :item_collection, :merchant_collection

  def initialize(merchants, items)
    @merchant_collection = merchants
    @item_collection = items
  end

  def self.from_csv(file_path)
    merchants = file_path[:merchants]
    items = file_path[:items]
    self.new(merchants, items)
  end
end

