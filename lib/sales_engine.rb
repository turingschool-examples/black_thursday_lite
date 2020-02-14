require 'csv'
require './lib/merchant'
require './lib/item'

class SalesEngine
  attr_reader :merchant_collection,
              :item_collection

  def initialize(items, merchants)
    @item_collection = items
    @merchant_collection = merchants
  end

  def self.from_csv(info_params)
    items = info_params[:items]
    merchants = info_params[:merchants]

    merchant_list = []
    CSV.foreach(merchants, headers: true, header_converters: :symbol) do |row|
      merchant = Merchant.new({:id => row[:id], :name => row[:name]})
      merchant_list << merchant
    end

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
    SalesEngine.new(item_list, merchant_list)
  end
end
