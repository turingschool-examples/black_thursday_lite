require './lib/merchant'
require 'csv'

class MerchantCollection
  attr_reader :merchant_file

  def initialize(merchant_file)
    @merchant_file = merchant_file
  end

  def all
    all_merchants = []
    CSV.read(merchant_file, headers: true).each do |merchant|
      merchant_hash = {id: merchant["id"], name: merchant["name"]}
      all_merchants << Merchant.new(merchant_hash)
    end
    all_merchants
  end

  def find(id_number)
    merchants = all
    merchants.each do |merchant|
      return merchant if merchant.id == id_number
    end
  end

  def create(merchant_info)
    new_id = rand.to_s[2..9]
    until find(id) == nil
      id = rand.to_s[2..9]
    end
    merchant_info[:id] = new_id
    new_merchant = Merchant.new
    all_merchants = all << new_merchant
  end
end
