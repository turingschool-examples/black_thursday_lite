class SalesEngine
    require 'csv'

  attr_reader :merchants, :name

  def initialize(merchants, items)
    @merchants = merchants
    @items = items
  end

  def self.from_csv(info)
    @items = info[:items]
    @merchants = info[:merchants]
  end
end

sales_engine = SalesEngine.from_csv({
:items     => "./data/items.csv",
:merchants => "./data/merchants.csv",})
