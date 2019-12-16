require 'csv'

class SalesEngine
  attr_reader :items, :merchants

  def self.from_csv(file_info)
    self.new(file_info)
  end

  def initialize(items, merchants)
    @items = CSV.read(file_info[:items])
    @merchants = CSV.read(file_info[:merchants])
  end

  def merchant_collection
    
  end

end
