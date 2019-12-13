require 'csv'

class SalesEngine
  attr_reader :merchants, :items

    def self.from_csv(locations)
      merchant_path = locations[:merchants]
      item_path = locations[:items]

      self.new(item_path, merchant_path)
    end

    def initialize(items, merchants)
      @items = items
      @merchants = merchants
    end
end
