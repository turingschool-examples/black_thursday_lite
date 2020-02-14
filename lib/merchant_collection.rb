require 'CSV'
require './lib/merchant'

class MerchantCollection

  def initialize
    @merchants = []
  end

  def all
    @merchants << Merchant
  end

  def find(id)
    CSV.find {|row| row[:id] == id}
  end
end
