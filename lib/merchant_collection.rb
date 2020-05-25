require 'csv'
require './lib/merchant'

class MerchantCollection

  @@filename = './data/merchants.csv'

  def initialize
    rows = CSV.read(@@filename, headers:true)
    @merchants = []
    rows.by_col[0..1].each do |row|
      @merchants << Merchant.new(row)
    end
  end

  def all
    @merchants
  end

  def find(id)
    @merchants.find do |merchant|
      merchant.id == id
    end
  end

end
