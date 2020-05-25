require './lib/merchant_collection'
# require './lib/item_collection'

class SalesEngine

  attr_reader :path

  def initialize(details)
    @items = details[:items]
    @merchants = details[:merchants]
  end

  def self.from_csv(path)
    SalesEngine.new(path)
  end

  def merchant_collection
    MerchantCollection.new
  end

end
