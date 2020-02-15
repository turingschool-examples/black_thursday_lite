class SalesEngine
  attr_reader :items_csv, :merchants_csv

  def initialize(**files)
    @items_csv = files[:items]
    @merchants_csv = files[:merchants]
  end

  def self.from_csv(csv_files)
    self.new(csv_files)
  end

end
