require 'csv'

class SalesEngine
attr_reader :items, :merchants

  def initialize(data)
    @items = data[:items]
    @merchants = data[:merchants]
  end

  def self.from_csv(data)
    self.new(data)
  end

  def merchant_collection
    #returns array of all merchants 
  end
end
