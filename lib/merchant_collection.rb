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

  def random_id_generator
    id = []
    loop do
      8.times do
        id << (1..9).to_a.sample
      end
      id = id.join.to_s
      find = all.find do |merchant|
        merchant.id == id
      end
    return id.to_i if find == nil
    end
  end

  def create(name)
    new_merchant = Merchant.new({name: name[:name], id: random_id_generator})
    @all_merchants << new_merchant
    new_merchant
  end

  def update(attributes)

  end
end
