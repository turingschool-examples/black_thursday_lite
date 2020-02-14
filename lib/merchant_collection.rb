class MerchantCollection

  def initialize(merchants = [])
    @merchants = merchants
  end

  def all
    @merchants
  end

  def find(merchant_id)
    @merchants.find { |merchant| merchant.id == merchant_id }
  end

  def add(merchant)
    @merchants << merchant
  end

  def create(merchant)
    @merchants << Merchant.new(merchant) if merchant
  end


end
