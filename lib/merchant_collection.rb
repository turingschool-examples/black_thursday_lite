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
    # fix new_id loop
    merchant_info[:id] = new_id
    new_merchant = Merchant.new(merchant_info)
  end

  def update(merchant_info)
    merchant_id = merchant_info[:id]
    merchant_name = merchant_info[:name]
    merchant = find(merchant_id)
    merchant.name = merchant_name
  end
end
