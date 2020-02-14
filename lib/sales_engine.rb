require "CSV"

class SalesEngine
  attr_reader :item_collection, :merchants
  def initialize(item_collection, merchants)
    @merchants = merchants
    @item_collection = item_collection
  end

  def self.from_csv(data_files)
    SalesEngine.new(ItemCollection.new(SalesEngine.item_collection(data_files[:items])),
                    MerchantCollection.new(SalesEngine.merchant_collection(data_files[:merchants])))
  end

   def self.merchant_collection(merchant_file)
     merchants = []
     csv_options = {
                    headers: true,
                    header_converters: :symbol,
                    converters: :all
                  }
     CSV.foreach(merchant_file, csv_options) do |merchant|
         merchants << Merchant.new(merchant.to_hash)

      end
      merchants
   end
   def self.item_collection(item_file)
     items = []
     csv_options = {
                    headers: true,
                    header_converters: :symbol,
                    converters: :all
                  }
     CSV.foreach(item_file, csv_options) do |item|
         items << Item.new(item.to_hash)

      end
      items
   end



end
