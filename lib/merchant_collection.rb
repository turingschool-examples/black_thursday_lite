class MerchantCollection

  attr_reader :collection
  def initialize(collection)
    @collection = collection
  end

  def all
    @collection
  end

  def find(id)
    @collection.find { |merchant| merchant.id == id }
  end

  def create(details)
    max_id = @collection.max { |merchant| merchant.id.to_i }.id
    details[:id] = (max_id.to_i + 1).to_s
    merchant = Merchant.new(details)
    @collection << merchant
  end

  def update(details)
    find(details[:id]).name = details[:name]
  end

  def destroy(id)
    @collection.delete(find(id))
  end

end
