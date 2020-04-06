require './lib/merchant'

class MerchantCollection
  attr_reader :all

  def initialize(merchant_collection)
    @all = merchant_collection.map { |merchant| Merchant.new(merchant)}
  end

  def find(id)
    @all.find { |merchant| merchant.id.to_i == id}
  end
end
