require 'csv'

class SalesEngine
  attr_reader :items,
              :merchants

  def initialize(details)
    @items = details[:items]
    @merchants = details[:merchants]
  end

end
