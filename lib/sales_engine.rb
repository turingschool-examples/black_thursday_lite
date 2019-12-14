class SalesEngine

  def initialize(info)
    @items = info[:items]
    @merchants = info[:merchants]
  end

  def self.from_csv(info)
    self.new(info)
  end

  def items
    @items
  end

  def merchants
    @merchants
  end

end
