require 'csv'
require './data/items.csv'
require './data/merchants.csv'

class SalesEngine

  def initialize(items_path, merchants_path)
    @items_path = items_path
    @merchants_path = merchants_path
  end

  def self.from_csv(details)
    @items = details[:items]
    @merchants = details[:merchants]
    self.new(items, merchants)
  end

end
