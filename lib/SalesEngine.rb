require 'csv'

class SalesEngine

  def self.from_csv(info)
    @items = info[:items]
    @merchants = info[:merchants]
  end

end
