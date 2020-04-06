require "CSV"
require './lib/merchant_collection'
require './lib/merchant'
require './lib/item'
require './lib/item_collection'

class SalesEngine
  @merchant_collection = MerchantCollection.new

  def self.from_csv(csv_files)
    merch_table = CSV.read(csv_files[:merchants])

    merch = {:id => nil, :name => nil}
    merch_table.drop(1).each do |row|
      merch[:id] = row[0]
      merch[:name] = row[1]
      @merchant_collection.add_merchant(merch)
      end

    # item_table = CSV.read(csv_files[:items])
    # single_item = {:id => nil, :name => nil, :description => nil, :unit_price => nil, :merchant_id => nil }
    #
    # item_table.drop(1).each do |row|
    #   single_item[:id] = row[0]
    #   single_item[:name] = row[1]
    #   single_item[:description] = row[2]
    #   single_item[:unit_price] = row[3]
    #   single_item[:merchant_id] = row[4]
    #   @item_collection.add_item(single_item)
    end


  end

  def merchant_collection
    @merchant_collection.all
  end

end
