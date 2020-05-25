require 'csv'
class SalesEngine

  attr_reader :items,
              :merchants

  def self.from_csv(info)
    items = info[:items]
    merchants = info[:merchants]
    self.new(items, merchants)
  end

  def initialize(items, merchants)
    @items = items
    @merchants = merchants
  end
end
