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
    new_name = new_merchant_name[:name]
    new_id = all.last.id + 1
    @merchants << Merchant.new({id: new_id, name: new_name})
  end

  def update(updated_merchant)
    id = updated_merchant[:id]
    new_name = updated_merchant[:name]
    merchant_needed = find(id)
    merchant_needed.name = new_name
  end

  def destroy(id)
    new_merchants = @merchants.reject { |merchant| merchant.id == id}
    @merchants = new_merchants
  end
end
