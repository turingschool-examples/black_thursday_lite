class MerchantCollection
  attr_reader :all

  def initialize(merchant_collection)
    @all = merchant_collection
  end

  def find(id)
    @all.find do |merchant|
      merchant.id == id
    end
  end

end
