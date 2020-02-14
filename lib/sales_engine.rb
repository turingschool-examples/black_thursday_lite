require 'CSV'

class SalesEngine
  attr_reader :item_collection, :merchant_collection
  def initialize
    @item_collection = []
    @merchant_collection = []
  end

  def self.from_csv(file_paths)
    sales_engine = SalesEngine.new

    CSV.foreach(file_paths[:items], headers: true) do |row|
      sales_engine.item_collection << row
    end

    CSV.foreach(file_paths[:merchants], headers: true) do |row|
      sales_engine.merchant_collection << row
    end
    sales_engine
  end
end
