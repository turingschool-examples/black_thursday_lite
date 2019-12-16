require 'csv'

class MerchantCollection

  def merchant_collection
    CSV.foreach('./data/merchants.csv') do |merchant|
      merchant.inspect
    end
  end
end
