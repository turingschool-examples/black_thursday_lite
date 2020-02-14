class MerchantCollection

  def initialize(merchants_array)
    @merchants = merchants_array
  end

  def all
    @merchants
  end

  def find(merchant_instance)
    if merchant_instance
      # returns either nil or an instance of Merchant with a matching ID
    end
  end
end

# find() - returns either nil or an instance of Merchant with a matching ID
