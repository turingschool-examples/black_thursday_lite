require 'pry'
require './lib/merchant.rb'
require 'csv'
class MerchantCollection

  attr_reader :merchants

  def initialize()
    @merchants = []
    CSV.foreach("./data/merchants.csv", headers: true, header_converters: :symbol) do |merchant|
      merchant_hash = {}
      merchant_hash[:id] = merchant[:id].to_i
      merchant_hash[:name] = merchant[:name]
      merchants << Merchant.new(merchant_hash)
    end
  end

  def all
    @merchants
  end

  def find(id)
    @merchants.find do |merchant|
      puts merchant if merchant.id == id
    end
  end

  def create(merchant_hash)
    @merchants << Merchant.new(merchant_hash)
  end

  def update(merchant_hash)
    id = merchant_hash[:id]
    updated_name = merchant_hash[:name]
    find(id).name = updated_name
  end

  def destroy(id)

  end



end


merch = MerchantCollection.new
merch.create({id: 12553341, name: "My Store"})
merch.find(12553341)
