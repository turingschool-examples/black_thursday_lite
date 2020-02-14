require 'pry'
class MerchantCollection

  def initialize
    @merchants = []
  end

  def all
    @merchants
  end

  def add(merchant)
    @merchants << merchant
  end

  def find(id)
    @merchants.find {|merchant| id == merchant.id}
  end

  def update(new_parameters)
    merchant_id = new_parameters[:id]
    new_name = new_parameters[:name]
    index_value = @merchants.index(find(merchant_id))
    @merchants[index_value].name = new_name
  end

  def destory(id)
    index_value = @merchants.index(find(id))
    @merchants.delete_at(index_value)
  end

  def create(hash_parameter)
    hash_parameter[:id] = rand(1..99999)
    merchant = Merchant.new(hash_parameter)
    @merchants << merchant
  end
end
