require 'csv'
require 'pry'

class SalesEngine
  attr_reader :items, :merchants, :merchant_collection

  def initialize(merchants, items)
    @items = items
    @merchants = merchants
    @merchant_collection = []
  end

  def self.from_csv(data)
    merchants = data[:merchants]
    items = data[:items]
    SalesEngine.new(merchants, items)
  end


end
