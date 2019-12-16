require 'csv'

class SalesEngine
  attr_reader :merchants, :items


  def self.from_csv(sales_info)
    merchants = sales_info[:merchants]
    items = sales_info[:items]
    self.new(items, merchants)
    # require "pry"; binding.pry
  end

  def initialize(items, merchants)
    @items = items
    @merchants = merchants
  end

end

# `items` returns an array of all items (This method will probably (definitely) end up referencing an instance of `ItemCollection`)
# merchants` returns an array of all merchants (This method will probably (definitely) end up referencing an instance of `MerchantCollection`)
#items = csv.read('items.csv')
