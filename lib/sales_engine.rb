require 'CSV'
class SalesEngine
  def initialize(items, merchants)
   @items = items
   @merchants = merchants
  end

  def self.from_csv(data)
    items = CSV.parse(File.read(data[:items]), headers: true)
    merchants = CSV.parse(File.read(data[:merchants]), headers: true)
    SalesEngine.new(items, merchants)
  end

  def merchant_list
    @merchants.map do|row|
      merchant = {}
      merchant[:id] = row['id'].to_i
      merchant[:name] = row['name']
      merchant
    end
  end
end
# sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv",
# })
# require './lib/sales_engine'
