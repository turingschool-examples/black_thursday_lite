class MerchantCollection
  attr_reader :all
  def initialize(merchants)
    @all = merchants
  end

  def find(id)
    @all.find { |merchant| merchant.id == id }
  end
end
