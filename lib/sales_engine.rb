require 'csv'

class SalesEngine

  def self.from_csv(data)
    items = data[:items]
    merchants = data[:merchants]
    self.new(items, merchants)
  end

  def initialize(items, merchants)
    @items = items
    @merchants = merchants
  end
end
