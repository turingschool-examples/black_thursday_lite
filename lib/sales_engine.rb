require 'csv'

class SalesEngine

  attr_reader   :items,
                :merchants

  attr_accessor :item_collection,
                :merchant_collection


  def initialize(argument)
    @items = argument[:items]
    @merchants = argument[:merchants]
  end

  def self.from_csv(argument)
    self.new(argument)
  end

end
