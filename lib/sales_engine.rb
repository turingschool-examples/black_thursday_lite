require 'csv'
require_relative 'merchant'
require_relative 'item'

class SalesEngine
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def self.from_csv(path)
    SalesEngine.new(path)
  end

  def self.generate_merchant_collection(path)
    merchants = CSV.foreach('./data/merchants.csv', headers: true, header_converters: :symbol) do |merchant_row|
      Merchant.new(merchant_row)
    end
  end

  def self.generate_item_collection(path)
    items = CSV.foreach('./data/merchants.csv', headers: true, header_converters: :symbol) do |item_row|
      Item.new(item_row)
    end
  end
end
