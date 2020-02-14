class MerchantCollection

  def initialize(merchants)
    @merchants = merchants
  end

  def all
    @merchants
  end

  def find(merchant_id)
    @merchants.find {|merchant| merchant[:id] == merchant_id}
  end
end
