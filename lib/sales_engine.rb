require 'csv'
require './lib/items'
require './lib/merchants'

class SalesEngine
  attr_reader :items,
              :merchants

  def initialize(items, merchants)
    @items = items
    @merchants = merchants
  end

  def self.from_csv(data)
    items = data[:items]
    merchants = data[:merchants]

    item_list = []
    CSV.foreach(items, headers: true, header_converters: :symbol) do |row|
     item = Item.new({:id => row[:id],
                     :name => row[:name],
                     :description => row[:description],
                     :unit_price => row[:unit_price],
                     :merchant_id => row[:merchant_id]
                     })
     item_list << item
   end
   
    merchant_list = []
    CSV.foreach(merchants, headers: true, header_converters: :symbol) do |row|
      merchant = Merchant.new({:id => row[:id], :name => row[:name]})
      merchant_list << merchant
    end
    SalesEngine.new(item_list, merchant_list)
  end
end
