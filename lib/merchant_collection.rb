class MerchantCollection
  def initialize(merchants)
    @merchants = merchants
  end

  def all
    @merchants
  end

  def find(id)
    # do i need to tell it to return nil in some sort of else statement?
    @merchants.find do |merchant|
      merchant.id == id
    end
  end
end
