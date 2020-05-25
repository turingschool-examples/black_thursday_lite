
require "csv"
require "./lib/merchant"

class MerchantCollection
  def self.all
    data = CSV.read('./data/merchants.csv', headers:true, header_converters: :symbol, converters: :numeric)
    data.map{|row| Merchant.new(row)}
  end

  def self.find(id)
    self.all.select do |merchant|
      merchant.id.eql?(id)
    end
  end

end
