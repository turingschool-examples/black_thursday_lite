require 'CSV'
require './lib/merchant'

class MerchantCollection
  attr_reader :merchants_file

  def initialize(merchants_file)
    @merchants_file = from_csv(merchants_file)
  end

  def from_csv(merchants_file)
    merchant_objects = CSV.foreach("#{merchants_file}", headers: true, header_converters: :symbol)
    merchant_objects.map do |row|
       Merchant.new(row)
     end
  end
end
