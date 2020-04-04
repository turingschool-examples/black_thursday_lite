class MerchantCollection

  def initialize(merchants)
    @merchants = merchants
  end

  def find(id)
    @merchants.find do |merchant|
      merchant.id == id.to_s
    end
  end

  def all
    @merchants
  end

end
