class MerchantCollection

  def initialize(merchants)
    @merchants = merchants
  end

  def find(id)
    @merchants.find do |merchant|
      merchant.id == id.to_s
    end
  end

  def all
    @merchants
  end

  def create(name)
    new_id = @merchants.last.id.to_i + 1
    until @merchants.none? {|merchant| merchant.id == new_id}
      new_id += 1
    end
    @merchants << Merchant.new({id: new_id, name: name[:name]})
  end

end
