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
      all_merchants << merchant
      # require "pry"; binding.pry
    end
    all_merchants
  end
end
