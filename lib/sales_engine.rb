class SalesEngine

  attr_reader :items, :merchants

  def initialize(data)
    @items = data[:items]
    @merchants = data[:merchants]
  end

  def self.from_csv(data)
    SalesEngine.new
  end

  def item_collection
  end

  def merchant_collection
  end
end
