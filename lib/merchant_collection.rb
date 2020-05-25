require 'csv'

class MerchantCollection

  def all
    merchant_collection =[]
    CSV.foreach(sales_params[:merchants], headers: true, header_converters: :symbol) do |row|
      merchant_params = {
        id: row[:id],
        name: row[:name]
      }
      merchant_collection << Merchant.new(merchant_params)
    end
  end

  def find(merchant_id)
    all.find do |merchant|
      merchant.id == merchant_id
    end
  end
end
