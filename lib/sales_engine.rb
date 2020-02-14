class SalesEngine
  def self.from_csv(atts = {})
    CSV.foreach(atts[:merchants], {headers: true} ) do |row|
      Merchant.new(row)
    end
    CSV.foreach(atts[:items], {headers: true} ) do |row|
      require "pry"; binding.pry
      Item.new(row)
    end
  end

  require_relative 'item'
require_relative 'merchant_collection'

  def initialize(item_path, merchant_path)
    @item_path = item_path
    @merchant_path = merchant_path
  end

  def items
    Item.from_csv(@item_path)
    Item.all
  end

  def merchant_collection
    MerchantCollection.new(@merchant_path)
  end

end
