require './lib/merchant'

class MerchantCollection
  attr_reader :all
  def initialize(merchants)
    @all = merchants
  end

  def find(id)
    @all.find { |merchant| merchant.id == id }
  end

  def create(merchant_info)
    new_id = (@all.max_by { |merchant| merchant.id }).id + 1
    new_merchant = Merchant.new({id: new_id, name: merchant_info[:name]})
    @all << new_merchant
  end

  def update(merchant_info)
    merchant_to_update = find(merchant_info[:id])
    merchant_to_update.name = merchant_info[:name] if merchant_to_update
  end

  def destroy(merchant_id)
    merchant_to_destroy = find(merchant_id)
    @all.delete(merchant_to_destroy) if merchant_to_destroy
  end
end
