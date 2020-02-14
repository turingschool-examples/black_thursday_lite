class MerchantCollection
  def initialize
    @merchants = []
  end

  def add_merchant(merchant)
    @merchants << merchant
  end

  def all
    @merchants
  end

  def
    find(merchant_id)
    @merchants.find { |merchant| merchant.id == merchant_id }
  end
end
