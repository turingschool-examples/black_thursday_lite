require_relative './merchant'
require 'CSV'

class MerchantCollection
  attr_reader :merchants

  def initialize(merchant_info)
    @merchants = create_merchants(merchant_info)
  end

  def create_merchants(merchant_info)
    merchants_array = []

    CSV.foreach(merchant_info, headers: true) do |row|
      merchants_array.push(Merchant.new({id: row[0], name: row[1]}))
    end
    return merchants_array
  end

  def find(merchant_id)
    @merchants.find do |merchant| 
      merchant.id == merchant_id
    end
  end

  def all
    # print array of merchants from the original list
    @merchants
  end
end