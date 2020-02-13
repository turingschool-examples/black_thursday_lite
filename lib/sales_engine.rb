require 'csv'
require './lib/merchant.rb'
class SalesEngine

  def self.from_csv(sales_params)
    CSV.foreach(sales_params[:merchants], headers: true, header_converters: :symbol) do |row|
      merchant_params = {id: row[:id], name: row[:name]}
      @merchants << Merchant.new(merchant_params)
    end
  end


end
