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
end
