require 'CSV'

class SalesEngine
  attr_reader :items, :merchant_collection
  def self.from_csv(data)
    # @items     = data[:items]
    @merchant_collection = CSV.read(data[:merchants], header_converters: :symbols)

    SalesEngine.new(@merchant_collection)
  end

  def initialize(merchant_collection)
    # @items     = items
    @merchant_collection = merchant_collection
  end
end
