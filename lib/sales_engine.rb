require './lib/item_collection'
require './lib/merchant_collection'

class SalesEngine
  attr_reader :merchants, :items

  def initialize(merchants, items)
    @merchants = merchants
    @items = items
  end

  def self.from_csv(path_info)
    merchants_arg = MerchantCollection.new(generate_merchant_collection(path_info[:merchants_path]))
    items_arg = ItemCollection.new(generate_item_collection(path_info[:items_path]))
    self.new(merchants_arg, items_arg)
  end

  def self.generate_merchant_collection(file_path)
    merchant_array = []
    CSV.foreach(file_path, headers: :first_row) do |csv_row|
      merchant_array << Merchant.new(csv_row)
    end
    merchant_array
  end

  def self.generate_item_collection(file_path)
    item_array = []
    CSV.foreach(file_path, headers: :first_row) do |csv_row|
      item_array << Item.new(csv_row)
    end
    item_array
  end
end
