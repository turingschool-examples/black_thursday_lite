require "CSV"
require './lib/merchant_collection'
require './lib/merchant'
require './lib/item'
require './lib/item_collection'

class SalesEngine
  @merchant_collection = MerchantCollection.new

  def self.from_csv(csv_files)
    merch_table = CSV.read(csv_files[:merchants])
    # item_table = CSV.read(csv_files[:items])

    merch = {:id => nil, :name => nil}
    merch_table.drop(1).each do |row|
      merch[:id] = row[0]
      merch[:name] = row[1]
      @merchant_collection.add_merchant(merch)
      end
  end

  def merchant_collection
    @merchant_collection.all
  end

end
