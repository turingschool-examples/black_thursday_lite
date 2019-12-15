require 'csv'

class SalesEngine
  attr_reader :merchants, :items

  def initialize(merchants, items)
    @merchants = merchants
    @items = items
  end

  def self.from_csv(locations)
    merchant_path = locations[:merchants]
    item_path = locations[:items]
    self.new(merchant_path, item_path)
  end
end
