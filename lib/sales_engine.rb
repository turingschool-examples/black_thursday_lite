class SalesEngine
  attr_reader :items, :merchants

  def self.from_csv(collections)
    @items = collections[:items]
    @merchants = collections[:merchants]
  end
end
