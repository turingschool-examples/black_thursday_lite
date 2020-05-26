require './lib/merchant'

class MerchantCollection
  def initialize
    @merchatns = [Merhcant, Merchant, Merchant]
  end

  def all

  end

  def find(name)
    merchants.find{|merchant| merchant.name == name}
  end

end
