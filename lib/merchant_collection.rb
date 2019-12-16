require_relative './merchant'
require 'CSV'

class MerchantCollection
  attr_reader :merchants

  def initialize(merchant_data)
    @merchants = make_merchants(merchant_data)
  end

  def make_merchants(merchant_data)
    #iterate through data making merchants
    merchants = []
    CSV.foreach(merchant_data, :headers => true) do |row|
      merchants.push(Merchant.new({id: row[0], name: row[1]}))
    end
    merchants
  end

  def all
    @merchants
  end

  def find(id)
    @merchants.find do |merchant|
      merchant.id == id
    end
  end

  def create(new_merchant_info)
    new_id = (all.max_by {|merchant| merchant.id}).id + 1
    @merchants.push(Merchant.new({id: new_id, name: new_merchant_info[:name]}))
  end

  def update(merchant_to_update)
    holder = find(merchant_to_update[:id])
    holder.update(merchant_to_update[:name])
  end

  def destroy(id_to_destroy)
    index = @merchants.index { |merchant| merchant.id == id_to_destroy}
    @merchants.delete_at(index)
  end

end
