require 'CSV'


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
    end
  end
  def item_collection
    CSV.foreach(@items) do |row|
      @item_collection = row
    end
  end
end
