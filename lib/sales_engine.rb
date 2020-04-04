require "CSV"
require './lib/merchant_collection'

class SalesEngine

  def self.from_csv(csv_files)
    merch_table = CSV.read(csv_files[:merchants])
    item_table = CSV.read(csv_files[:items])
    merch_collection = MerchantCollection.new(merch_table)
  end


end
