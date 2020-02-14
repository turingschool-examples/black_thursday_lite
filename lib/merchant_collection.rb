class MerchantCollection

  attr_reader :all

  def initialize(merchant_collection_params)
    @all  = merchant_collection_params
  end

  def find(id)
    @all.find {|merchant| merchant.id == id}
  end

end
