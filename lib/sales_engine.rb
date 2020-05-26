require 'csv'

class SalesEngine
  attr_reader :item_collection, :merchant_collection
  @@items_file = './data/items.csv'
  @@merchants_file = './data/merchants.csv'

  def initialize()
    @item_collection = [] #sales_engine_params[:items]
    @merchant_collection = [] #sales_engine_params[:merchants]
  end

  def from_csv(file_paths)
    if file_paths[:merchants]
      create_merchants_from_csv(file_paths[:merchants])
    end

    if file_paths[:items]
      create_items_from_csv(file_paths[:items])
    end
  end

  def create_items_from_csv(items_csv)
    rows = CSV.read(items_csv, headers: true, header_converters: :symbol)
    rows.each do |row|
      item = Item.new(row)
      @item_collection << item
    end
  end

  def create_merchants_from_csv(merchants_csv)
    rows = CSV.read(merchants_csv, headers: true, header_converters: :symbol)
    rows.each do |row|
      merchant = Merchant.new(row)
      @merchant_collection << merchant
    end
  end
end
