require 'csv'
require 'pry'
require './lib/merchant'
require './lib/merchantcollection'

class SalesEngine
  attr_reader :items,
              :merchants

  def self.from_csv(data)
    @items = data[:items]
    @merchants = data[:merchants]

    SalesEngine.new(@items, @merchants)
  end

  def initialize(items, merchants)
    @items = items
    @merchants = merchants
  end

  def all_merchants
    @all_merchants = []
    CSV.foreach(@merchants, headers: true) do |row|
      @id = row["id"].to_i
      @name = row["name"]
      merchant_data = {:id => @id, :name => @name}
      @all_merchants << Merchant.new(merchant_data)
    end
    @all_merchants
  end

  def merchant_collection
    self.all_merchants
    MerchantCollection.new(@all_merchants)
  end

end
