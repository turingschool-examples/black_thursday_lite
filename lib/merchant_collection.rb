class MerchantCollection
  attr_reader :all
  def initialize(merchant_collection)
    @all = merchant_collection
  end

  def find(merchant_id)
    found = @merchant_collection.find do |merchant|
      merchant_id == merchant.id
    end
  end
end
