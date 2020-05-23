require "csv"
require "./lib/merchant"

class MerchantCollection

  def initialize(sales_engine_input)
    @merchants_csv = sales_engine_input
  end

  def all
    merchants = []
    CSV.foreach(@merchants_csv, headers: true) do |row|
      merchants << Merchant.new({:id =>row["id"].to_i, :name =>row["name"]})
    end
    merchants
  end

  def find(search_id)
    all.find { |merchant| merchant.id == search_id }
  end

end
