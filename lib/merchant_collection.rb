class MerchantCollection

  def initialize(array)
    @known_merchants = array
  end

  def all
    @known_merchants
  end

  def find(merchant_id)
    found = @known_merchants.find do|merchant|
      merchant.id.to_i == merchant_id
    end
    if found != nil
      found
    else
      nil
    end
  end
end
