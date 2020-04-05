require 'CSV'

class MerchantCollection

  def initialize(merchants = [])
    @merchants = merchants
  end

  def all
    @merchants
  end

  def find(id)
    all.find { |merchant| merchant.id == id}
  end

  def create(new_merchant_name)
    arg_name = new_merchant_name[:name]
    new_id = all.last.id + 1
    @merchants << Merchant.new({id: new_id, name: arg_name})
  end
end
