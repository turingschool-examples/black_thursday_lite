class MerchantCollection

  def initialize(merchants)
    @merchants = merchants
  end

  def find(id)
    @merchants.find do |merchant|
      merchant.id == id
    end
  end

end
