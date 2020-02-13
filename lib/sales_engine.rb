require 'csv'

class SalesEngine

  attr_reader   :items,
                :merchants

  attr_accessor :item_collection,
                :merchant_collection

  def initialize(argument)
    @items = argument[:items]
    @merchants = argument[:merchants]
    @item_collection
    @merchant_collection
  end

end
