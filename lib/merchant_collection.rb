require './lib/merchant.rb'

class MerchantCollection
  attr_reader :all

  def initialize(merchants)
    @all = merchants
  end

end
