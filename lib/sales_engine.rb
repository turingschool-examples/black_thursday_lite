class SalesEngine
  attr_reader :items, :merchants

  def initialize(attributes)
    @items = attributes[:items]
    @merchants = attributes[:merchants]
  end
end
