require 'CSV'
require './lib/sales_engine'
require './lib/merchant'

class MerchantCollection

  attr_reader :all, :all_merchants

  def initialize(merchant_path)
    @merchant_path = merchant_path
    @all_merchants = []
  end

  def all
    merchants = CSV.read(@merchant_path)
    merchant_info = {}
    merchants.each do |merchant|
      merchant_info = merchant_info.merge(id: merchant[0])
      merchant_info = merchant_info.merge(name: merchant[1])
      merchant_info = merchant_info.merge(created_at: merchant[2])
      merchant_info = merchant_info.merge(updated_at: merchant[3])
      @all_merchants << Merchant.new(merchant_info)
    end
    @all_merchants
  end

  def find(id_number)
    @all_merchants.find do |merchant|
      merchant.id.to_i == id_number
    end
  end
end
