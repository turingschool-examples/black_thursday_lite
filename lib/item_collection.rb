require "csv"
require "./lib/item"
class ItemCollection
  def self.all
    data = CSV.read('./data/items.csv', headers:true, header_converters: :symbol, converters: :numeric)
    data.map{|row| Item.new(row)}
  end

  def self.where(merchant_id)
    self.all.select do |item|
      item.merchant_id == merchant_id
    end
  end

end
