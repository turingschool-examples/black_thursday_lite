require 'csv'

#### VERY SIMILAR TO FUTBOL IF NOT EXACTLY THE SAME

class SalesEngine
  attr_reader :items,
              :merchants

  def initialize(sales_engine_info)
    @items = sales_engine_info[:items]
    @merchants = sales_engine_info[:merchants]
  end

          ## called on SalesEngine/self
  def self.from_csv(sales_engine_info)
    SalesEngine.new(sales_engine_info)
  end

  # def self.merchant_collection
  #   MerchantCollection.new(@sales_information[:merchants])
  # end
  #
  def self.item_collection
      ItemCollection.new(@sales_engine_info[:items])
  end



  #
  # def can_print_merchants
  #   CSV.foreach('./data/merchants.csv', headers: true) do |row|
  #     require "pry"; binding.pry
  #     row.first
  #   end
  # end
  #
  # def item_collection
  #   CSV.foreach('./data/items.csv') do |row|
  #     p row
  #   end
  # end

end
