class MerchantCollection
  attr_reader :merchants

  def initialize(info)
    @merchants = info
  end

  def all
    @merchants
  end
end
