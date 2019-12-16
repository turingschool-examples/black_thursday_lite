require 'csv'

class SalesEngine

  attr_reader :items, :merchants

  def self.from_csv(data)
    @items = data[:items]
    @merchants = data[:merchants]
  end

  def all
    
  end
end
