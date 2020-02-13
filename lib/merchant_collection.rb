class MerchantCollection

  def initialize(merchants_list)
    @merchants_list = merchants_list
  end

  def all
    @merchants_list
  end

  def find(merchant_id)
    @merchants_list.find { |merchant| merchant.id == merchant_id}
  end
end
