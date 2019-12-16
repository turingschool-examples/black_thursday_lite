require 'csv'
require_relative 'merchant'

class MerchantCollection
  attr_reader :merchants
  
  def initialize(merchants)
    @merchants = merchants.map do |merchant|
      Merchant.new(merchant)
    end
    
    @merchants.shift
  end
  
  def find(id)
    self.merchants.find do |merchant|
      merchant.id.to_i == id
    end
  end
  
  def all
    @merchants
  end
end