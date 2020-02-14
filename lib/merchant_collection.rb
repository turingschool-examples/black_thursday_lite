class MerchantCollection

  attr_reader :all

  def initialize(merchant_collection_params)
    @all  = merchant_collection_params
  end

  def find(id)
    @all.find {|merchant| merchant.id == id}
  end

  def create(merchant_info)
    id = @all.map {|merchant| merchant.id}
    new_id = id.uniq.sort.last + 1

    merchant = Merchant.new({id: new_id, name: merchant_info[:name]})
    @all << merchant
    merchant
  end

  def update(merchant_info)
    merchant = find(merchant_info[:id])

    # update merchant where id = "12337411"
  end
end
