class SalesEngine

  def initialize(csv_info)
    @items = csv_info[:items]
    @merchants = csv_info[:merchants]
  end

  def self.from_csv(csv_info)
    @csv_info
  end
end
