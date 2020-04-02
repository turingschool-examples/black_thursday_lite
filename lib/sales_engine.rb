require 'csv'
require 'pry'

class SalesEngine

  attr_reader :merchants_array,
              :merchant_collection
  def initialize(merchants_array, items_array)
    @merchants_array = merchants_array
    @items_array = items_array
    @merchant_collection = MerchantCollection.new(@merchants_array)
  end

  def self.from_csv(data)
    merchants_array = CSV.read(data[:merchants])
    items_array = CSV.read(data[:items])
    self.new(merchants_array, items_array)
  end

end
