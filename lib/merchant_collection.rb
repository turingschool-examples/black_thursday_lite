require 'CSV'

class MerchantCollection

  def initialize(merchants = [])
    @merchants = merchants
  end

  def all
    @merchants
  end

  def find(id)
    ### Returns either nil or an instance of Merchant
    ### with matching ID.
  end
end
