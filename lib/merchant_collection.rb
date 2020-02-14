class MerchantCollection

  def initialize(merchants_collection)
    @merchants_collection = merchants_collection
  end

  def all
    @merchants_collection
  end

  def find(merchant_id)
    @merchants_collection.find { |merchant| merchant.id == merchant_id}
  end

  def create(merchant_params)
    merchant = Merchant.new(merchant_params)
    @merchants_collection << merchant
  end

  def update(merchant_params)
    (find(merchant_params[:id])).name = merchant_params[:name]
  end

  def destroy(merchant_id)
    @merchants_collection.delete(find(merchant_id))
  end
end
