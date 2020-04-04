require "CSV"

class SalesEngine

  def initialize(init_hash)
    @items = init_hash[:items]
    @merchants = init_hash[:merchants]
  end
end
