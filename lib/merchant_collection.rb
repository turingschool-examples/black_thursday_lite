require 'CSV'
require './lib/merchant'

class MerchantCollection

  attr_reader :collection
  def initialize
    @collection = []
  end

  def collect_merchants(merchant)
    @collection << merchant
  end

  def all
    CSV.foreach('./data/merchants.csv', headers: true, header_converters: :symbol) do |row|
      info = Hash.new
    info.merge!(name: row[:name])
    info.merge!(id: row[:id])
      merchant = Merchant.new(info)

      collect_merchants(merchant)
    end
    @collection
  end

  def find(identification)
    collection.find do |merchant|
      merchant.id == identification

    end
  end

end




  # def find_specific_merchant
  #   merchants << CSV.foreach('./data/merchants.csv', headers: true, header_converters: :symbol) do |row|
  #     id = row[:id].to_i
  #     name = row[:name]
  #     merchant = Merchant.new(id, name)
  #     require "pry";binding.pry
  #   end
  # end
