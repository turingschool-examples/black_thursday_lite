require "csv"
require "./lib/merchant"

class SalesEngine
 attr_reader :item_collection, :merchant_collection

  def initialize
    @item_collection = nil
    @merchant_collection = nil
  end

  def self.from_csv(files)
    #SalesEngine.new
    self.new
    # @key = files[files.key]
    #@items = files[:items]
    #@merchants = files[:merchants]
    # @file_path = files[file_path]

    @item_collection = CSV.parse(File.read(files[:items]))
    header = @item_collection[0]
    id = @item_collection[1][0]
    name = @item_collection[1][1]
    merchant_collection_raw = CSV.parse(File.read(files[:merchants]))
    #require "pry"; binding.pry
    id = merchant_collection_raw[0][0]
    @merchant_collection = merchant_collection_raw.map do |merchant_info|
                            Merchant.new({id: merchant_info[0], name: merchant_info[1]})
                          end
    #require "pry"; binding.pry
    #self.new
  end
end
