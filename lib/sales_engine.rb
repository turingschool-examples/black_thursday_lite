require "CSV"

class SalesEngine

  def self.from_csv(csv_files)
    merch_table = CSV.read(csv_files[:merchants])
    item_table = CSV.read(csv_files[:items])
  end

end
