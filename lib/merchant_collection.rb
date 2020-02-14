class MerchantCollection

  def initialize(merchants)
    @merchants = merchants
  end

  def all
    @merchants
  end

  def find(merchant_id)
    require "pry"; binding.pry
    if @merchants.each {|merchant| merchant.has_value?(merchant_id)}
      @merchants.select {|id, value| value == merchant_id}
    else
      nil
    end
  end
end
