require_relative './merchant'
require 'csv'

class MerchantCollection
  attr_reader

  def initialize(merchant_data)
    @merchants = create_merchants(merchant_data)
  end

  def create_merchants(merchant_data)
    merchant_array

    CSV.foreach(merchant_data, headers: true, header_converters: :symbol) do |row|
      merchants_array << Merchant.new({ id: row[0], name: row[1] })
    end
    merchants_array
  end

  def all
    @merchants
  end

  def find(merchant_id)
    @merchants.find_all { |merchant| merchant_id == merchant_id }
  end
end
