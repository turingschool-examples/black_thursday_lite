class SalesEngine
  attr_reader :items, :merchants

  def initialize
    @items = nil
    @merchants = nil
  end

  def from_csv(csv_perameters)
    @items = csv_perameters[:items]
    @merchants = csv_perameters[:merchants]
  end
end
