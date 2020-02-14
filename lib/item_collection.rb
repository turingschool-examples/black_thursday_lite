require './lib/item'
require 'csv'

class ItemCollection

  attr_reader :items

  def initialize(path)
    @items = []
    CSV.foreach(path, headers: true, header_converters: :symbol) do |row|
      @items << Item.new({:id => row[:id],
                          :name => row[:name],
                          :description => row[:description],
                          :unit_price => row[:unit_price],
                          :merchant_id => row[:merchant_id]
                        })
    end
  end

  def all
    @items
  end

  def where(merchant_id)
    @items.select { |item| item.merchant_id == merchant_id }
  end

end
