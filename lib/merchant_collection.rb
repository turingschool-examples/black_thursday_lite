class MerchantCollection
  attr_reader :merchants

  def initialize(merchants)
    @merchants = merchants
  end

  def all
    @merchants
  end

  def find(id)
    @merchants.find {|merchant| merchant.id == id}
  end

end
