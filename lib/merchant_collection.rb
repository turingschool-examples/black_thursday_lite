class MerchantCollection
  def initialize(merchants_collection)
    @merchants_collection = merchants_collection
  end

  def all
    @merchants_collection
  end

  def find(merchant_id)
    @merchants_collection.find do |merchant|
      merchant.id == merchant_id
    end
  end
end
