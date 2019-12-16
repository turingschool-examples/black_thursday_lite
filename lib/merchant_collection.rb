require 'csv'

class MerchantCollection
  attr_reader :merchants
  
  def initialize(merchants)
    @merchants = merchants
  end
end